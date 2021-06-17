<?php
  $choice = 'recover_only';
  require_once 'queryLogic.php';

?>

<html lang="pt-BR">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link href="https://fonts.googleapis.com/css2?family=Comfortaa:wght@300;400;500;600;700&display=swap" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css2?family=Comfortaa:wght@300;400;500;600;700&family=Lato:ital,wght@0,300;0,400;0,700;0,900;1,300;1,700;1,900&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="fontawesome-free-5.15.1-web/css/all.min.css">
  <link rel="stylesheet" href="css/style.css">
  <title>Ajuda SUS - Resultados</title>
</head>

<body>

  <ul class="menu-links">
    <li><a href="index.php?choice=start">Início</a></li>
    <li><a href="#">Notícias</a></li>
    <li><a href="publicacoes.php">Administração</a></li>
  </ul>

  <header class="header">
    <div class="logo">
      <img src="img/logo-ajuda-sus.svg" alt="logo-ajuda-sus" width="150px">
    </div>
    <div class="menu">
      <div class="linha"></div>
      <div class="linha"></div>
      <div class="linha"></div>
    </div>
  </header>

  <!-- sessao resultados -->
  <section id="resultados" class="resultados">

    <h1>Resultados</h1>

    <div class="container-resultados">

      <!-- unidade 1 -->
      <?php foreach($postoEsc as $indice => $posto) { ?>
      
      <form method="POST" action="resultado-detalhado.php?choice=recover_detailed">
      <div class="container-unidade">
        <h3><?php echo $posto->nome ?></h3>
        <div class="info-container">
          <i class="fas fa-map-marked-alt"></i>
          <div class="info-item">
            <h4>Endereço</h4>
            <?php if ($posto->numero == 'S/N') { ?>
            <p><?php echo $posto->rua.' - S/N'; ?> 
            <?php } else { ?> 
            <p><?php echo $posto->rua.' - Nº S'.$posto->numero ?> 
            <?php } ?>
            <br><?php echo 'Bairro '.$posto->bairro.' - CEP: '.$posto->cep ?></p>

          </div>
        </div>

        <div class="info-container">
          <i class="fas fa-phone-alt"></i>
          <div class="info-item">
            <h4>Contato</h4>
            <?php if (empty($posto->telefone)) { ?>
              <p>Sem Número</p>
            <?php } else { ?>
              <p><?php echo $posto->telefone ?></p>
            <?php } ?>
          </div>
        </div>

        <div class="info-container">
          <i class="far fa-clock"></i>
          <div class="info-item">
            <h4>Horário de Atendimento</h4>
            <p>Segunda à sexta das <?php echo substr($posto->h_abre,0,5). ' às ' . substr($posto->h_fecha,0,5) ?>
            <br>Sábado das <?php echo substr($posto->h_abre,0,5) ?> às 12:00</p>
          </div>
        </div>

        <a href="<?php echo 'resultado-detalhado.php?posto='.$posto->idposto ?>">Ver mais</a>
      </div>
      
      </form>
      <?php } ?>
      
      </div>

    </div>

  </section>

  <div class="container-nova-pesquisa">
    <a href="index.php" class="nova-pesquisa">Nova Pesquisa</a>
  </div>


  <script src="js/script.js"></script>
</body>

</html>