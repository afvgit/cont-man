<?php
 
/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Scripting/PHPClass.php to edit this template
 */

/**
 * Description of Media
 *
 * @author adelson2
 */
class CmMedia {
    //put your code here
    public $cm_title;
    public $cm_type;
    public $cm_media;
    
    public function getCm_title() {
        return $this->cm_title;
    }

    public function getCm_type() {
        return $this->cm_type;
    }

    public function getCm_media() {
        return $this->cm_media;
    }

    public function setCm_title($cm_title): void {
        $this->cm_title = $cm_title;
    }

    public function setCm_type($cm_type): void {
        $this->cm_type = $cm_type;
    }

    public function setCm_media($cm_media): void {
        $this->cm_media = $cm_media;
    }

 

    
}
