<?php
 
/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Scripting/PHPClass.php to edit this template
 */

/**
 * Description of Options
 *
 * @author adelson2
 */
class CmOptions {
    //put your code here
    public $cm_key;
    public $cm_value;
    
    public function getCm_key() {
        return $this->cm_key;
    }

    public function getCm_value() {
        return $this->cm_value;
    }

    public function setCm_key($cm_key): void {
        $this->cm_key = $cm_key;
    }

    public function setCm_value($cm_value): void {
        $this->cm_value = $cm_value;
    } 
    
}
