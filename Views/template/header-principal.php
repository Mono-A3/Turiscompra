<!DOCTYPE html>
<html lang="en">

<head>
  <title><?php echo TITLE . ' - ' . $data['title']; ?></title>

  <link rel="apple-touch-icon" sizes="57x57" href="<?php echo BASE_URL; ?>assets/favicon/apple-icon-57x57.png">
  <link rel="apple-touch-icon" sizes="60x60" href="<?php echo BASE_URL; ?>assets/favicon/apple-icon-60x60.png">
  <link rel="apple-touch-icon" sizes="72x72" href="<?php echo BASE_URL; ?>assets/favicon/apple-icon-72x72.png">
  <link rel="apple-touch-icon" sizes="76x76" href="<?php echo BASE_URL; ?>assets/favicon/apple-icon-76x76.png">
  <link rel="apple-touch-icon" sizes="114x114" href="<?php echo BASE_URL; ?>assets/favicon/apple-icon-114x114.png">
  <link rel="apple-touch-icon" sizes="120x120" href="<?php echo BASE_URL; ?>assets/favicon/apple-icon-120x120.png">
  <link rel="apple-touch-icon" sizes="144x144" href="<?php echo BASE_URL; ?>assets/favicon/apple-icon-144x144.png">
  <link rel="apple-touch-icon" sizes="152x152" href="<?php echo BASE_URL; ?>assets/favicon/apple-icon-152x152.png">
  <link rel="apple-touch-icon" sizes="180x180" href="<?php echo BASE_URL; ?>assets/favicon/apple-icon-180x180.png">
  <link rel="icon" type="image/png" sizes="192x192" href="<?php echo BASE_URL; ?>assets/favicon/android-icon-192x192.png">
  <link rel="icon" type="image/png" sizes="32x32" href="<?php echo BASE_URL; ?>assets/favicon/favicon-32x32.png">
  <link rel="icon" type="image/png" sizes="96x96" href="<?php echo BASE_URL; ?>assets/favicon/favicon-96x96.png">
  <link rel="icon" type="image/png" sizes="16x16" href="<?php echo BASE_URL; ?>assets/favicon/favicon-16x16.png">
  <link rel="manifest" href="<?php echo BASE_URL; ?>assets/favicon/manifest.json">
  <meta name="msapplication-TileColor" content="#ffffff">
  <meta name="msapplication-TileImage" content="/ms-icon-144x144.png">
  <meta name="theme-color" content="#ffffff">

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <link rel="apple-touch-icon" href="<?php echo BASE_URL . 'assets/img/apple-icon.'; ?>">
  <link rel="shortcut icon" type="image/x-icon" href="<?php echo BASE_URL . 'assets/img/favicon.ico'; ?>">

  <link rel="stylesheet" href="<?php echo BASE_URL . 'assets/css/bootstrap.min.css'; ?>">
  <link rel="stylesheet" href="<?php echo BASE_URL . 'assets/css/templatemo.css'; ?>">

  <!-- Load fonts style after rendering the layout styles -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Roboto:wght@100;200;300;400;500;700;900&display=swap">

  <!-- Slick -->
  <link rel="stylesheet" type="text/css" href="<?php echo BASE_URL . 'assets/css/slick/slick.css'; ?>">
  <link rel="stylesheet" type="text/css" href="<?php echo BASE_URL . 'assets/css/slick/slick-theme.css'; ?>">

  <link rel="stylesheet" type="text/css" href="<?php echo BASE_URL . 'assets/DataTables/datatables.min.css'; ?>">

  <!-- Replace "test" with your own sandbox Business account app client ID -->
  <script src="https://www.paypal.com/sdk/js?client-id=<?php echo CLIENT_ID; ?>&currency=<?PHP echo MONEDA; ?>"></script>
</head>

<body>
  <!-- Start Top Nav -->
  <nav class="navbar navbar-expand-lg bg-dark navbar-light d-none d-lg-block" id="templatemo_nav_top">
    <div class="container text-light">
      <div class="w-100 d-flex justify-content-between">
        <div>
          <i class="fa fa-envelope mx-2"></i>
          <a class="navbar-sm-brand text-light text-decoration-none" href="mailto:turiscompra2021@gmail.com">info.turiscompra2021@gmail.com</a>
        </div>
        <div>
          <a class="text-light" href="https://www.facebook.com/profile.php?id=100086923481430" target="_blank" rel="sponsored"><i class="fab fa-facebook-square fa-sm fa-fw me-2"></i></a>
          <a class="text-light" href="https://instagram.com/turiscompra_21?igshid=YmMyMTA2M2Y=" target="_blank"><i class="fab fa-instagram fa-sm fa-fw me-2"></i></a>
        </div>
      </div>
    </div>
  </nav>
  <!-- Close Top Nav -->


  <!-- Header -->
  <nav class="navbar navbar-expand-lg navbar-light shadow">
    <div class="container d-flex justify-content-between align-items-center">
        
        <a class="navbar-brand text-util logo h3 align-self-center" href="<?php echo BASE_URL; ?>"><img src="<?php echo BASE_URL; ?>assets/images/1.png" class="logo-icon" alt="logo icon" style="width: 20%;"> <?php echo TITLE; ?></a>

      <button class="navbar-toggler border-0" type="button" data-bs-toggle="collapse" data-bs-target="#templatemo_main_nav" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>

      <div class="align-self-center collapse navbar-collapse flex-fill  d-lg-flex justify-content-lg-between" id="templatemo_main_nav">
        <div class="flex-fill">
          <ul class="nav navbar-nav d-flex justify-content-between mx-lg-auto">
            <li class="nav-item">
              <a class="nav-link" href="<?php echo BASE_URL . 'principal/shop' ?>">Tienda</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="<?php echo BASE_URL . 'principal/contactos' ?>">Contactos</a>
            </li>
          </ul>
        </div>
        <div class="navbar align-self-center d-flex">
          <div class="d-lg-none flex-sm-fill mt-3 mb-4 col-7 col-sm-auto pr-3">
            <div class="input-group">
              <input type="text" class="form-control" id="inputMobileSearch" placeholder="Búsqueda ...">
              <div class="input-group-text">
                <i class="fa fa-fw fa-search"></i>
              </div>
            </div>
          </div>
          <a class="nav-icon d-none d-lg-inline" href="#" data-bs-toggle="modal" data-bs-target="#templatemo_search">
            <i class="fa fa-fw fa-search text-dark mr-2"></i>
          </a>
          <a class="nav-icon position-relative text-decoration-none <?php echo ($data['perfil'] == 'no') ? '' : 'd-none'; ?>" href="#" id="verCarrito">
            <i class="fa fa-fw fa-cart-arrow-down text-dark mr-1"></i>
            <span class="position-absolute top-0 left-100 translate-middle badge rounded-pill bg-util text-white" id="btnCantidadCarrito">0</span>
          </a>
          <a class="nav-icon position-relative text-decoration-none <?php echo ($data['perfil'] == 'no') ? '' : 'd-none'; ?>" href="<?php echo BASE_URL . 'principal/deseo' ?>">
            <i class="fa fa-fw fa-heart text-dark mr-1"></i>
            <span class="position-absolute top-0 left-100 translate-middle badge rounded-pill bg-util text-white" id="btnCantidadDeseo">0</span>
          </a>
          <?php if (!empty($_SESSION['correoCliente'])) { ?>
            <a class="nav-icon position-relative text-decoration-none" href="<?php echo BASE_URL . 'clientes' ?>">
              <img class="img-thumbnail" src="<?php echo BASE_URL . 'assets/images/clientes/default.png' ?>" alt="-LOGO-CLIENTE" width="50">
            </a>
          <?php } else { ?>
            <a class="nav-icon position-relative text-decoration-none" href="#" data-bs-toggle="modal" data-bs-target="#modalLogin">
              <i class="fa fa-fw fa-user text-dark mr-3"></i>
            </a>
          <?php } ?>

        </div>
      </div>

    </div>
  </nav>
  <!-- Close Header -->

  <!-- Modal -->
  <div class="modal fade bg-white" id="templatemo_search" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg" role="document">
      <div class="w-100 pt-1 mb-5 text-right">
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-content modal-body border-0 p-0">
        <div class="input-group mb-2">
          <input type="text" class="form-control" id="inputModalSearch" name="q" placeholder="Búsqueda ...">
          <button type="submit" class="input-group-text bg-util text-light">
            <i class="fa fa-fw fa-search text-white"></i>
          </button>
        </div>
        <div class="row" id="resultBusqueda">

        </div>
      </div>
    </div>
  </div>