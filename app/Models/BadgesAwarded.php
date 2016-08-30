<?php namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class BadgesAwarded extends Model
{
	protected $table = 'exploration.badges_awarded';

	protected $primaryKey = 'badges_id';

	protected $hidden = [
		'pivot'
	];

	public $incrementing = false;

}