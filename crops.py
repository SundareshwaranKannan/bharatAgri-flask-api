from flask import (
    Blueprint, flash, g, request, url_for, jsonify
)

from bharatAgriService.db import get_db

bp = Blueprint('crops', __name__, url_prefix='/crops')

@bp.route('/cropDetails')
def getAllCrops():
    cropResult = []
    db = get_db()
    crops = db.execute(
        'SELECT * FROM crop'
    ).fetchall()
    print(crops)
    for crop in crops:
        cropResult.append(
            {
                'name': crop['name'],
                'duration': crop['duration'],
                'expenditure': crop['expenditure'],
                'water': crop['water'],
                'climate': crop['climate'],
                'temperature': crop['temperature'],
            })
    return jsonify(cropResult)