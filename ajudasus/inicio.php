<?php
  require_once "queryLogic.php";
?>

<html lang="pt-BR">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link href="https://fonts.googleapis.com/css2?family=Comfortaa:wght@300;400;500;600;700&display=swap" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css2?family=Comfortaa:wght@300;400;500;600;700&family=Lato:ital,wght@0,300;0,400;0,700;0,900;1,300;1,700;1,900&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="fontawesome-free-5.15.1-web/css/all.min.css">
  <link rel="stylesheet" href="css/style.css">
  <title>Ajuda SUS - Inicio</title>
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

  <section class="container-encontrar">
    <div class="encontrar">
      <h1>Encontre sua unidade de saúde</h1>
      <form method="post" action="resultados.php?choice=recover_only" class="opcoes-encontrar">
        <!-- uf -->
        <label for="uf">UF</label>
        <select name="" id="" disabled="disabled">
          <option value="ba">BA</option>
        </select>

        <!-- cidade -->
        <label for="cidade">Cidade</label>
        <select name="" id="" disabled="disabled">
          <option value="ba">Itabuna</option>
        </select>

        

        <label for="uf">Bairro</label>
        <select name="bairro" id="bairro">
          <option value="*">Qualquer um</option>
        <?php foreach($postos as $indice => $posto) { ?>

          <option value="<?php echo $posto->idposto ?>"><?php echo $posto->bairro ?></option>

        <?php } ?>
        </select>

        <!-- especialidades médicas -->
        <label for="uf">Especialidade</label>
        <select name="especialidades" id="especialidades">
          <option value="*">Qualquer uma</option>
        <?php foreach($especialidades as $indice => $especi) { ?>

          <option value="<?php echo $especi->idespeci ?>"><?php echo $especi->especi ?></option>
          
        <?php } ?>
        </select>

        <button class="btn">Buscar</button>
        <!-- <button class="btn">Buscar</button> -->

      </form>
    </div>
  </section>

  <script src="js/script.js"></script>
</body>

</html>