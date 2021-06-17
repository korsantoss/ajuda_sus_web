<?php
  @require_once 'queryLogic.php';
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
  <title>Ajuda SUS - Publicações</title>
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

    <h2>Publicar</h2>

    <form method="POST" class="form-publicar" action="publicacoes.php?choice=insert">

      <div class="input-id-cadastrar wd">
        <label for="id">ID Unidade</label>
        <input type="text" name="id">
      </div>

      <div class="input-titulo-cadastrar wd">
        <label for="title">Título da Publicação</label>
        <input type="text" name="titulo">
      </div>

      <div class="input-autor-cadastrar wd">
        <label for="autor">Autor</label>
        <input type="text" name="autor">
      </div>

      <div class="input-conteudo-cadastrar wd">
        <div>
          <label for="conteudo">Conteúdo</label>
        </div>
        <textarea name="conteudo"></textarea>
      </div>

      <button class="btn-publicar" type="submit">Publicar</button>

    </form>

  </section>


  <section>
    <div class="container-publicacoes">
      <h2>Publicações</h2>

      <form method="POST" class="form-editar-publicacoes" action="publicacoes.php?choice=pub">
        <div class="input-id-publicacoes">
          <label for="id">ID Unidade</label>
          <input type="text" name="id" value="">
        </div>

        <div class="input-data-incio-publicacoes">
          <label for="data">Data Inicio</label>
          <input type="date" name="data-inicio">
        </div>

        <div class="input-data-fim-publicacoes">
          <label for="data">Data Fim</label>
          <input type="date" name="data-fim">
        </div>

        <div class="container-btn">
          <button class="btn-publicar" type="submit">Buscar Publicacoes</button>
        </div>
      </form>

      <?php if (empty($pubs)) { ?>

        <div class="publicacao">
          <h2 class="title-publicacao"> Nenhuma publicação encontrada. <br/></h2>
          <h3> O posto especificado não há publicações, ou ele não existe. </h3>
        </div>
      
      <?php } else { foreach ($pubs as $indice => $pub) { ?>

        <div class="publicacao">
          <h3 class="title-publicacao"><?php echo $pub->titulo ?></h3>
          <h4 class="data-publicacao">Publicação: <?php echo $pub->conteudo ?></h4>
          <p class="conteudo-publicacao"><?php echo $pub->data ?></p>
          <p class="autor-publicacao">Autor: <?php echo $pub->autor ?></p>
          <a class="editar" href="editar-pub.php?pub=<?php echo $pub->idpublicacao ?>">
            <i class="far fa-edit"></i>
          </a>
          <a class="excluir" href="publicacoes.php?choice=del&pub=<?php echo $pub->idpublicacao ?>">
            <i class="far fa-trash-alt"></i>
          </a>
        </div>

      <?php }} ?>
    </div>
  </section>



  <script src="js/script.js"></script>
</body>

</html>