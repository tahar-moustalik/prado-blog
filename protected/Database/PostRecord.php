<?php


class PostRecord extends TActiveRecord
{
    const TABLE='posts';

    public $post_id;
    public $author_id;
    public $create_time;
    public $title;
    public $content;
    public $status;
    public $author;

    public static $RELATIONS=array
    (
        'author' => array(self::BELONGS_TO, 'UserRecord','author_id'),
    );

    public static function finder($className=__CLASS__)
    {
        return parent::finder($className);
    }

    public function __toString()
    {
        return $this->title;
    }
}