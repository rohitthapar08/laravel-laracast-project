<?php

namespace App;

use Carbon\Carbon;

class Post extends Model
{
	public function comments()
	{
		return $this->hasMany(Comment::class);
	}
	public function user()
	{
		return $this->belongsTo(User::class);
	}
	public function addcomment($body)
	{

		$this->comments()->create(compact('body'));	
		// Comment::create([
		// 	'body' => $body,
		// 	'post_id' => $this->id 
		// ])
	}
	public function scopeFilter($query , $filters)
	{
		// if($month = $filters['month']){
  //           $query->whereMonth('created_at', Carbon::parse($month)->month);
  //       }

  //       if($year = $filters['year']){
  //           $query->whereYear('created_at', $year);
  //       }
		if(isset($filters['month'])){

		$query->whereMonth('created_at',Carbon::parse($filters['month'])->month);
		}

		if(isset($filters['year'])){

		$query->whereYear('created_at',$filters['year']);
		}

        //$posts= $posts->get();
	}

	public static function archives()
	{
		return static::selectRaw('year(created_at) year, monthname(created_at) month, count(*) published')
        ->groupBy('year','month')
        ->orderByRaw('min(created_at)desc')
        ->get()
        ->toArray();
	}

	public function tags()
	{
		return $this->belongsToMany(Tag::class);
	}
}
 

