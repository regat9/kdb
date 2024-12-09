<?php

class Product
{
    public function setPrice($price)
    {
        try {
            // save to Db
        } catch (Exception $e) {
            $this->logError($e->getMessage());
        }
    }

    // public function logError($message)
    // {
    //     // save error message
    // }
}
