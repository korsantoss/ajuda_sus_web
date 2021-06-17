<?php

class PostoService{

    private $conexao;
    private $posto;

    public function __construct(Conexao $conexao, Posto $posto){
        $this->conexao = $conexao->conectar();
        $this->posto = $posto;
    }
    
    public function inserirPublicacao(){
        $query = 'INSERT INTO publicacao';
        $query .= ' VALUES (null, :titulo, :conteudo, curdate(), :autor, :posto)';

        $stmt = $this->conexao->prepare($query);
        $stmt->bindParam(':titulo', $_POST['titulo']);
        $stmt->bindParam(':conteudo', $_POST['conteudo']);
        $stmt->bindParam(':autor', $_POST['autor']);
        $stmt->bindParam(':posto', $_POST['id']);

        $stmt->execute();
    }

    public function deletePublicacao(){
        $query = 'DELETE FROM publicacao';
        $query .= ' where idpublicacao = :id';

        $stmt = $this->conexao->prepare($query);
        $stmt->bindParam(':id', $_GET['pub']);

        $stmt->execute();
    }

    public function editarPublicacao(){

        $query = 'UPDATE publicacao';
        $query .= ' SET titulo = :titulo,';
        $query .= ' conteudo = :conteudo,';
        $query .= ' autor = :autor';
        $query .= ' where idpublicacao = :id';

        $stmt = $this->conexao->prepare($query);

        $stmt->bindParam(':titulo', $_POST['titulo']);
        $stmt->bindParam(':conteudo', $_POST['conteudo']);
        $stmt->bindParam(':autor', $_POST['autor']);
        $stmt->bindParam(':id', $_POST['id']);
    
        $stmt->execute();

    }

    public function buscarPostos(){
        $query = ' SELECT * FROM posto';
        $stmt = $this->conexao->prepare($query);

        $stmt->execute();
        return $stmt->fetchAll(PDO::FETCH_OBJ);
    }

    public function buscarEspecialidades(){
        $query = ' SELECT * FROM especialidade';
        $stmt = $this->conexao->prepare($query);

        $stmt->execute();
        return $stmt->fetchAll(PDO::FETCH_OBJ);
    }

    public function buscarPosto(){
        //Selecionar todos os postos e todas especialidades.
        if ($_POST['bairro'] == '*' && $_POST['especialidades'] == '*'){
            $query = ' SELECT * FROM ajudasus.posto';

            $stmt = $this->conexao->prepare($query);
        
        //Selecionar um posto especifico com qualquer especialidade.
        } else if ($_POST['bairro'] != '*' && $_POST['especialidades'] == '*'){
            $query = ' SELECT * FROM ajudasus.posto WHERE';
            $query .=' idposto = :bairro';

            $stmt = $this->conexao->prepare($query);
            $stmt->bindParam(':bairro', $_POST['bairro']);
        
        //Selecionar qualquer posto que tenha a especialidade especificada.
        } else if ($_POST['bairro'] == '*' && $_POST['especialidades'] != '*'){

            $query = 'SELECT DISTINCT posto.idposto, posto.nome, posto.cep, posto.cidade, posto.UF,';
            $query .= ' posto.bairro, posto.rua, posto.numero, posto.telefone, posto.h_abre, posto.h_fecha';
            $query .= ' FROM posto,agenda,especialidade';
            $query .= ' WHERE especialidade.idespeci = agenda.FK_idespeci';
            $query .= ' AND posto.idposto = agenda.fk_idposto';
            $query .= ' AND FK_idespeci = :especi';

            $stmt = $this->conexao->prepare($query);
            $stmt->bindParam(':especi', $_POST['especialidades']);

        //Verificar se o posto selecionado tem a especialidade especificada
        } else if ($_POST['bairro'] != '*' && $_POST['especialidades'] != '*') {

            $query = 'SELECT DISTINCT posto.idposto, posto.nome, posto.cep, posto.cidade, posto.UF,';
            $query .= ' posto.bairro, posto.rua, posto.numero, posto.telefone, posto.h_abre, posto.h_fecha';
            $query .= ' FROM posto,agenda,especialidade';
            $query .= ' WHERE especialidade.idespeci = agenda.FK_idespeci';
            $query .= ' and especialidade.idespeci = :especi';
            $query .= ' and posto.idposto = :bairro';

            $stmt = $this->conexao->prepare($query);
            $stmt->bindParam(':bairro', $_POST['bairro']);
            $stmt->bindParam(':especi', $_POST['especialidades']);
        }

        $stmt->execute();
        return $stmt->fetchAll(PDO::FETCH_OBJ);
    }

    public function buscarAgenda(){
        
        $query = 'SELECT DISTINCT agenda.idagenda, agenda.dia, agenda.hora, agenda.FK_idespeci,';
        $query .= ' agenda.FK_idposto, especialidade.idespeci,especialidade.especi';
        $query .= ' FROM ajudasus.posto,agenda,especialidade';
        $query .= ' WHERE agenda.FK_idposto = posto.idposto';
        $query .= ' AND agenda.FK_idespeci = especialidade.idespeci';
        $query .= ' and posto.idposto = :posto';
        $query .= ' ORDER BY idagenda';

        $stmt = $this->conexao->prepare($query);
        $stmt->bindParam(':posto', $_GET['posto']);

        $stmt->execute();
        return $stmt->fetchAll(PDO::FETCH_OBJ);

    }

    public function buscarPostoGet(){
        $query = 'SELECT * FROM ajudasus.posto WHERE';
        $query .=' idposto = :posto';

        $stmt = $this->conexao->prepare($query);
        $stmt->bindParam(':posto', $_GET['posto']);

        $stmt->execute();
        return $stmt->fetchAll(PDO::FETCH_OBJ);
    }

    public function buscarPub(){
        $query = 'SELECT DISTINCT publicacao.titulo, publicacao.conteudo, publicacao.data, publicacao.autor ';
        $query .= ' FROM publicacao,agenda,posto ';
        $query .= ' where publicacao.FK_idposto = posto.idposto';
        $query .= ' and posto.idposto = :posto';
        $query .= ' order by `data` desc';

        $stmt = $this->conexao->prepare($query);
        $stmt->bindParam(':posto', $_GET['posto']);

        $stmt->execute();
        return $stmt->fetchAll(PDO::FETCH_OBJ);
    }

    public function buscarPubID(){
        $query = 'SELECT * FROM publicacao ';
        $query .= ' WHERE idpublicacao = :pub ';

        $stmt = $this->conexao->prepare($query);
        $stmt->bindParam(':pub', $_GET['pub']);

        $stmt->execute();
        return $stmt->fetchAll(PDO::FETCH_OBJ);
    }

    public function buscarPubDate(){

        //Verifica se as duas datas estão vazias. Retorna todas as publicações do posto especificado.
        if (empty($_POST['data-inicio']) && empty($_POST['data-fim'])){
            $query = 'SELECT DISTINCT publicacao.idpublicacao, publicacao.titulo, publicacao.conteudo, publicacao.data, publicacao.autor ';
            $query .= ' FROM publicacao,agenda,posto ';
            $query .= ' where publicacao.FK_idposto = posto.idposto';
            $query .= ' and posto.idposto = :posto';
            $query .= ' order by `data` desc';

            $stmt = $this->conexao->prepare($query);

            $stmt->bindParam(':posto', $_POST['id']);
        }
        //Verifica se apenas a data inicial está vazia. Retorna todas as pubs até a data final.
         else if (empty($_POST['data-inicio']) && !empty($_POST['data-fim'])) {
            $query = 'SELECT DISTINCT publicacao.idpublicacao, publicacao.titulo, publicacao.conteudo, publicacao.data, publicacao.autor ';
            $query .= ' FROM publicacao,agenda,posto ';
            $query .= ' where publicacao.FK_idposto = posto.idposto';
            $query .= ' and `data` between 00000000';
            $query .= ' and :dataf';
            $query .= ' and posto.idposto = :posto';
            $query .= ' order by `data` desc';

            $stmt = $this->conexao->prepare($query);
            $dataf = str_replace('-','',$_POST['data-fim']);
            $stmt->bindParam(':dataf', $dataf);
        }
        //Verifica se apenas a data final está vazia. Retorna todas as pubs desde a data inicial.
         else if (!empty($_POST['data-inicio']) && empty($_POST['data-fim']))  {
            $query = 'SELECT DISTINCT publicacao.idpublicacao, publicacao.titulo, publicacao.conteudo, publicacao.data, publicacao.autor ';
            $query .= ' FROM publicacao,agenda,posto ';
            $query .= ' where publicacao.FK_idposto = posto.idposto';
            $query .= ' and `data` between :datai';
            $query .= ' and 99991230';
            $query .= ' and posto.idposto = :posto';
            $query .= ' order by `data` desc';

            $stmt = $this->conexao->prepare($query);
            $datai = str_replace('-','',$_POST['data-inicio']);
            $stmt->bindParam(':datai', $datai);

        } 
        //Lógica padrão, com duas datas escolhidas.
        else {
            $query = 'SELECT DISTINCT publicacao.idpublicacao, publicacao.titulo, publicacao.conteudo, publicacao.data, publicacao.autor ';
            $query .= ' FROM publicacao,agenda,posto ';
            $query .= ' where publicacao.FK_idposto = posto.idposto';
            $query .= ' and `data` between :datai';
            $query .= ' and :dataf';
            $query .= ' and posto.idposto = :posto';
            $query .= ' order by `data` desc';

            $datai = str_replace('-','',$_POST['data-inicio']);
            $dataf = str_replace('-','',$_POST['data-fim']);

            $stmt = $this->conexao->prepare($query);
            $stmt->bindParam(':datai', $datai);
            $stmt->bindParam(':dataf', $dataf);
        }

        $stmt->bindParam(':posto', $_POST['id']);
        
        $stmt->execute();
        return $stmt->fetchAll(PDO::FETCH_OBJ);
    }
}