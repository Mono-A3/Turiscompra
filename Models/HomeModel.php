<?php
class HomeModel extends Query{
 
    public function __construct()
    {
        parent::__construct();
    }
    public function getCategorias()
    {
        $sql = "SELECT * FROM categorias";
        return $this->selectAll($sql);
    }
    public function getNuevosProductos()
    {
        $sql = "SELECT * FROM productos ORDER BY id DESC LIMIT 12";
        return $this->selectAll($sql);
    }
}
 
?>