<?php

require "../../ajudasus_proc/posto_model.php";
require "../../ajudasus_proc/conexao.php";
require "../../ajudasus_proc/posto_service.php";

$choice = isset($_GET['choice']) ? $_GET['choice'] : $choice;

switch ($choice) {

    case 'start':
        $posto = new Posto();
        $conexao = new Conexao();
        $postoService = new PostoService($conexao,$posto);

        $postos = $postoService->buscarPostos();
        $especialidades = $postoService->buscarEspecialidades();
    break;
    
    case 'recover_only':
        $posto = new Posto();
        $conexao = new Conexao();
        $postoService = new PostoService($conexao,$posto);

        $postoEsc = $postoService->buscarPosto();
    break;

    case 'recover_detailed':
        $posto = new Posto();
        $conexao = new Conexao();
        $postoService = new PostoService($conexao,$posto);

        $agenda = $postoService->buscarAgenda();
        $postos = $postoService->buscarPostoGet();
        $pub = $postoService->buscarPub();
    break;

    case 'pub':
        $posto = new Posto();
        $conexao = new Conexao();
        $postoService = new PostoService($conexao,$posto);

        $pubs = $postoService->buscarPubDate();
    break;

    case 'insert':
        $posto = new Posto();
        $conexao = new Conexao();
        $postoService = new PostoService($conexao,$posto);

        $postoService->inserirPublicacao();
    break;

    case 'del':
        $posto = new Posto();
        $conexao = new Conexao();
        $postoService = new PostoService($conexao,$posto);

        $postoService->deletePublicacao();
    default:

    case 'edit-call':
        $posto = new Posto();
        $conexao = new Conexao();
        $postoService = new PostoService($conexao,$posto);

        $pub = $postoService->buscarPubID();
    break;

    case 'editfinal':
        $posto = new Posto();
        $conexao = new Conexao();
        $postoService = new PostoService($conexao,$posto);

        $postoService->editarPublicacao();
    break;
}

//header('Location: resultados.php?');

