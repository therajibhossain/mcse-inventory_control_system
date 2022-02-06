<?php

namespace Nnjeim\World\Models;

use Nnjeim\World\Models\Traits\TimezoneRelations;

use Illuminate\Database\Eloquent\Model;

class Timezone extends Model
{
	use TimezoneRelations;

	protected $fillable = [
		'country_id',
		'name',
	];

	public $timestamps = false;
}
