<?php
$choice = 'recover_detailed';
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
  <title>Ajuda SUS - Resultados Detalhado</title>

  <script
    src = "https://maps.googleapis.com/maps/api/js?key=AIzaSyAmOLWA9gvojfVxhYUE7N0KZM4t6_kOGOs&callback=initMap&libraries=&v=weekly"
    defer
  ></script>

  <style type="text/css">
    #map {
      height: 400px;
      /* The height is 400 pixels */
      width: 100%;
      /* The width is the width of the web page */
    }
  </style>

  <script>
    // Initialize and add the map
    function initMap() {  
      // The location of Uluru
      const uluru = {
        lat: -14.8092235,
        lng: -39.2746055
      };
      // The map, centered at Uluru
      const map = new google.maps.Map(document.getElementById("map"), {
        zoom: 17,
        center: uluru,
      });
      // The marker, positioned at Uluru
      const marker = new google.maps.Marker({
        position: uluru,
        map: map,
      });
    }
  </script>

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

  <?php foreach ($postos as $indice => $posto) { ?>

    <!-- sessao resultados -->
    <section class="info-detalhada">
      <!-- titulo da unidade -->
      <div class="container-title">
        <h1><?php echo $posto->nome ?></h1>
      </div>

      <!-- informações básicas da unidade -->
      <div class="container-info">

        <div class="title-container-info">
          <h2>Informações Gerais</h2>
        </div>

        <div class="info-basicas">
          <div class="info-container">
            <div class="info">
              <i class="fas fa-map-marked-alt" style="color: #4fb7d4"></i>
              <h4>Endereço</h4>
              <?php if ($posto->numero == 'S/N') { ?>
                <p><?php echo $posto->rua . ' - S/N'; ?>
                <?php } else { ?>
                  <p><?php echo $posto->rua . ' - Nº S' . $posto->numero ?>
                  <?php } ?>
                  <br><?php echo 'Bairro ' . $posto->bairro . ' - CEP: ' . $posto->cep ?></p>
            </div>
          </div>

          <div class="info-container">
            <div class="info">
              <i class="fas fa-phone-alt" style="color: #4fb7d4"></i>
              <h4>Contato</h4>
              <?php if (empty($posto->telefone)) { ?>
                <p>Sem Número</p>
              <?php } else { ?>
                <p><?php echo $posto->telefone ?></p>
              <?php } ?>
            </div>
          </div>



          <div class="info-container">
            <div class="info">
              <i class="far fa-clock" style="color: #4fb7d4"></i>
              <h4>Horário de Atendimento</h4>
              <p>Segunda à sexta das <?php echo substr($posto->h_abre, 0, 5) . ' às ' . substr($posto->h_fecha, 0, 5) ?>
                <br>Sábado das <?php echo substr($posto->h_abre, 0, 5) ?> às 12:00</p>
            </div>
          </div>
        </div>


        <div class="title-container-info">
          <h2>Localização</h2>
        </div>
        <div id="map"></div>
      </div>
    <?php } ?>
    <!-- informações de atendimento por dia da semana e especialidade -->
    <div class="container-dia-especialidade">

      <div class="title-container-dia-especialidade">
        <h2>Horário/Especialidade</h2>
      </div>

      <div class="card-dia">
        <div class="container-dia-info">

          <h3 class="title-dia">Segunda</h3>
          <?php foreach ($agenda as $indice => $agendaT) { ?>
            <?php if ($agendaT->dia == 'SEGUNDA') { ?>

              <p><?php echo substr($agendaT->hora, 0, 5) . ' - ' . $agendaT->especi ?></p>

          <?php }
          } ?>

        </div>
      </div>

      <div class="card-dia">
        <h3 class="title-dia">Terça</h3>

        <?php foreach ($agenda as $indice => $agendaT) { ?>
          <?php if ($agendaT->dia == 'TERÇA') { ?>

            <p><?php echo substr($agendaT->hora, 0, 5) . ' - ' . $agendaT->especi ?></p>

        <?php }
        } ?>

      </div>

      <div class="card-dia">
        <h3 class="title-dia">Quarta</h3>
        <?php foreach ($agenda as $indice => $agendaT) { ?>
          <?php if ($agendaT->dia == 'QUARTA') { ?>

            <p><?php echo substr($agendaT->hora, 0, 5) . ' - ' . $agendaT->especi ?></p>

        <?php }
        } ?>
      </div>

      <div class="card-dia">
        <h3 class="title-dia">Quinta</h3>
        <?php foreach ($agenda as $indice => $agendaT) { ?>
          <?php if ($agendaT->dia == 'QUINTA') { ?>

            <p><?php echo substr($agendaT->hora, 0, 5) . ' - ' . $agendaT->especi ?></p>

        <?php }
        } ?>
      </div>

      <div class="card-dia">
        <h3 class="title-dia">Sexta</h3>
        <?php foreach ($agenda as $indice => $agendaT) { ?>
          <?php if ($agendaT->dia == 'SEXTA') { ?>

            <p><?php echo substr($agendaT->hora, 0, 5) . ' - ' . $agendaT->especi ?></p>

        <?php }
        } ?>
      </div>

      <div class="card-dia">
        <h3 class="title-dia">Sábado</h3>
        <?php foreach ($agenda as $indice => $agendaT) { ?>
          <?php if ($agendaT->dia == 'SABADO') { ?>

            <p><?php echo substr($agendaT->hora, 0, 5) . ' - ' . $agendaT->especi ?></p>

        <?php }
        } ?>
      </div>
    </div>

    <!-- publicacoes vinculadas ao posto -->
    <div class="container-publicacoes">
      <h2>Publicações</h2>

      <?php if (empty($pub)) { ?>

        <div class="publicacao">
          <h3 class="title-publcacao">Nenhuma publicação postada.</h3>
        </div>

        <?php } else {
        foreach ($pub as $indice => $pubs) { ?>

          <div class="publicacao">
            <h3 class="title-publicacao"><?php echo $pubs->titulo ?></h3>
            <h4 class="data-publicacao"><?php echo $pubs->data ?></h4>
            <p class="conteudo-publicacao"><?php echo $pubs->conteudo ?></p>
          </div>

      <?php }
      } ?>

    </section>

    <script src="js/script.js"></script>
</body>

</html>