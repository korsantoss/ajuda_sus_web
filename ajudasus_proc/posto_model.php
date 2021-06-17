<?php

class Posto {
    private $idposto;
    private $nome;
    private Endereco $endereco;
    private Publicacao $publicacao;

    public function __get($attribute){
        return $this->$attribute;
    }

    public function __set($attribute,$value){
        $this->$attribute = $value;
    }
}

class Endereco{
    private $cep;
    private $cidade;
    private $UF;
    private $bairro;
    private $rua;
    private $numero;
    private $coordenadas;
    private $telefone;
    private $h_abre;
    private $h_fecha;

    public function __get($attribute){
        return $this->$attribute;
    }

    public function __set($attribute, $value){
        $this->$attribute = $value;
    }
}

class Publicacao{
    private $id;
    private $titulo;
    private $conteudo;
    private $data;
    private $autor;

    public function __get($attribute){
        return $this->$attribute;
    }

    public function __set($attribute, $value){
        $this->$attribute = $value;
    }
}

class Agenda {
    private $idagenda;
    private $dia;
    private $hora;

    public function __get($attribute){
        return $this->$attribute;
    }

    public function __set($attribute, $value){
        $this->$attribute = $value;
    }
}

class Especialidade{
    private $idespeci;
    private $especi;

    public function __get($attribute){
        return $this->$attribute;
    }

    public function __set($attribute, $value){
        $this->$attribute = $value;
    }
}