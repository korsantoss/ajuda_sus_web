<?php
  $choice = 'edit-call';
  require_once('queryLogic.php');
?>
<html lang="pt-BR">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link href="https://fonts.googleapis.com/css2?family=Comfortaa:wght@300;400;500;600;700&display=swap" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css2?family=Comfortaa:wght@300;400;500;600;700&family=Lato:ital,wght@0,300;0,400;0,700;0,900;1,300;1,700;1,900&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="fontawesome-free-5.15.1-web/css/all.min.css">
  <link rel="stylesheet" href="css/style.css">
  <link rel="stylesheet" href="css/postagem.css">
  <title>Ajuda SUS - Editar Publicações</title>
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

  <div class="title-publicacoes">
    <h1>Administração das Publicações</h1>
  </div>

  <section class="container-publicar">

    <h2>Editar Publicação</h2>

    <?php foreach ($pub as $indice => $pubed) { ?>
  
      <form class="form-publicar" method="POST" action="publicacoes.php?choice=editfinal">

        <div class="input-id-editar wd">
          <label for="id">ID Publicação</label>
          <input type="text" name="id" value="<?php echo $pubed->idpublicacao ?>" readonly>
        </div>

        <div class="input-titulo-cadastrar wd">
          <label for="title">Título da Publicação</label>
          <input type="text" name="titulo" value="<?php echo $pubed->titulo ?>">
        </div>

        <div class="input-autor-cadastrar wd">
          <label for="autor">Autor</label>
          <input type="text" name="autor" value="<?php echo $pubed->autor ?>">
        </div>

        <div class="input-conteudo-cadastrar wd">
          <div>
            <label for="conteudo">Conteúdo</label>
          </div>
          <textarea name="conteudo"><?php echo $pubed->conteudo ?></textarea>
        </div>

        <button class="btn-atualizar" type="submit">Atualizar</button>
        <a class="btn-cancelar" href="publicacoes.php">Cancelar</a>

      </form>

    <?php } ?>
  </section>

  <script src="js/script.js"></script>
</body>

</html>