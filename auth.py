from flask import (
    Blueprint, flash, g, request, session, url_for
)
from flask_cors import CORS

from bharatAgriService.db import get_db

bp = Blueprint('auth', __name__)
CORS(bp)

@bp.route('/auth/register', methods=('GET', 'POST'))
def register():
    if request.method == 'POST':
        userRequest = request.json
        email = userRequest['email']
        password = userRequest['password']
        name = userRequest['name']
        location = userRequest['location']
        mobile = userRequest['mobile']
        db = get_db()
        error = None

        if not email:
            error = 'email is required.'
            return {'validUser': 'N', 'message': error}
        elif not password:
            error = 'Password is required.'
            return {'validUser': 'N', 'message': error}
        elif db.execute(
            'SELECT id FROM user WHERE email = ?', (email,)
        ).fetchone() is not None:
            error = 'User {} is already registered.'.format(email)
            return {'validUser': 'N', 'message': error}

        if error is None:
            db.execute(
                'INSERT INTO user (email, password, name, mobile, location) VALUES (?, ?, ?, ?, ?)',
                (email, password, name, mobile, location)
            )
            db.commit()
            return {'validUser': 'Y'}

@bp.route('/auth/login', methods=('GET', 'POST'))
def login():
    if request.method == 'POST':
        loginRequest = request.json
        email = loginRequest['email']
        password = loginRequest['password']
        db = get_db()
        error = None
        user = db.execute(
            'SELECT * FROM user WHERE email = ?', (email,)
        ).fetchone()

        if user is None:
            error = 'Incorrect email.'
        elif not user['password'] == password:
            error = 'Incorrect password.'

        if error is None:
            session.clear()
            session['user_id'] = user['id']
            return {'validUser': 'Y'}
        else:
            return {'validUser': 'N', 'message': error}

@bp.before_app_request
def load_logged_in_user():
    user_id = session.get('user_id')

    if user_id is None:
        g.user = None
    else:
        g.user = get_db().execute(
            'SELECT * FROM user WHERE id = ?', (user_id,)
        ).fetchone()