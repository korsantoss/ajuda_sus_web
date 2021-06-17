<?php

class Conexao{

    private $host = 'localhost'; //Localhost, caso seja local.
    private $dbname = 'ajudasus';
    private $user = 'root'; //NOME DO USUÁRIO
    private $pass = ''; //SENHA

    public function conectar(){ //Atribui um objeto do tipo PDO ao ser chamado
        try {
            
            $conexao = new PDO(
                "mysql:host=$this->host;dbname=$this->dbname",//DSN
                "$this->user",//User
                "$this->pass"//Password
            );

            return $conexao;

        } catch (PDOException $e) {
            echo 'Erro de conexão!';
            echo '<p>'.$e->getMessage().'</p>';
        }
    }
}


?>