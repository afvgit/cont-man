<?php
/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Scripting/PHPClass.php to edit this template
 */

/**
 * Description of Posts
 *
 * @author adelson2
 */
class CmPosts {
    //put your code here
    public $cm_title;
    public $cm_category;
    public $cm_post;
    public $cm_author;
    public $cm_display_date;
    public $cm_expiration_date;
    
    public function getCm_title() {
        return $this->cm_title;
    }

    public function getCm_category() {
        return $this->cm_category;
    }

    public function getCm_post() {
        return $this->cm_post;
    }

    public function getCm_author() {
        return $this->cm_author;
    }

    public function getCm_display_date() {
        return $this->cm_display_date;
    }

    public function getCm_expiration_date() {
        return $this->cm_expiration_date;
    }

    public function setCm_title($cm_title): void {
        $this->cm_title = $cm_title;
    }

    public function setCm_category($cm_category): void {
        $this->cm_category = $cm_category;
    }

    public function setCm_post($cm_post): void {
        $this->cm_post = $cm_post;
    }

    public function setCm_author($cm_author): void {
        $this->cm_author = $cm_author;
    }

    public function setCm_display_date($cm_display_date): void {
        $this->cm_display_date = $cm_display_date;
    }

    public function setCm_expiration_date($cm_expiration_date): void {
        $this->cm_expiration_date = $cm_expiration_date;
    }
    
}

  
