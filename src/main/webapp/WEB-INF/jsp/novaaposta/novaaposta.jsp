<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="pt-br">
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>Apostas</title>

  <!-- Custom fonts for this template-->
  <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

  <!-- Custom styles for this template-->
  <link href="css/sb-admin-2.min.css" rel="stylesheet">

  <!-- Chart.js -->
  <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
</head>
<body id="page-top">

  <!-- Page Wrapper -->
  <div id="wrapper">

    <!-- Sidebar -->
    <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

      <!-- Sidebar - Brand -->
      <a class="sidebar-brand d-flex align-items-center justify-content-center" href="index.html">
        <div class="sidebar-brand-icon rotate-n-15">
          <i class="fas fa-laugh-wink"></i>
        </div>
        <div class="sidebar-brand-text mx-3">Jogo de Loteria</div>
      </a>

      <!-- Divider -->
      <hr class="sidebar-divider my-0">

      <!-- Nav Item - Dashboard -->
      <li class="nav-item">
        <a class="nav-link" href="<c:url value='/dashboard'/>">
          <i class="fas fa-fw fa-tachometer-alt"></i>
          <span>Dashboard</span></a>
      </li>

      <!-- Divider -->
      <hr class="sidebar-divider">

      <!-- Nav Item - Nova Aposta -->
      <li class="nav-item">
        <a class="nav-link" href="<c:url value='/novaaposta'/>">
          <i class="fas fa-fw fa-cube"></i>
          <span>Apostas</span></a>
      </li>

    </ul>
    <!-- End of Sidebar -->

    <!-- Content Wrapper -->
    <div id="content-wrapper" class="d-flex flex-column">

      <!-- Main Content -->
      <div id="content">

        <!-- Topbar -->
        <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

          <!-- Sidebar Toggle (Topbar) -->
          <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
            <i class="fa fa-bars"></i>
          </button>

          <!-- Topbar Navbar -->
          <ul class="navbar-nav ml-auto">

            <!-- Nav Item - Alerts -->
            <li class="nav-item dropdown no-arrow mx-1">
              <a class="nav-link dropdown-toggle" href="#" id="alertsDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                <i class="fas fa-bell fa-fw"></i>
                <!-- Counter - Alerts -->
                <span class="badge badge-danger badge-counter">1+</span>
              </a>
              <!-- Dropdown - Alerts -->
              <div class="dropdown-list dropdown-menu dropdown-menu-right shadow animated--grow-in" aria-labelledby="alertsDropdown">
                <h6 class="dropdown-header">
                  Recado Paroquial
                </h6>
                <a class="dropdown-item d-flex align-items-center" href="#">
                  <div class="mr-3">
                    <div class="icon-circle bg-success">
                      <i class="fas fa-donate text-white"></i>
                    </div>
                  </div>
                  <div>
                    <div class="small text-gray-500">Hoje</div>
                    Lembre-se! Não vai jogar os pés pelas mãos
                  </div>
                </a>
              </div>
            </li>

            <div class="topbar-divider d-none d-sm-block"></div>

            <!-- Nav Item - User Information -->
            <li class="nav-item dropdown no-arrow">
              <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                <span class="mr-2 d-none d-lg-inline text-gray-600 small">Jogador</span>
                <img class="img-profile rounded-circle" src="${pageContext.request.contextPath}/img/bolls.jpg">
              </a>
              <!-- Dropdown - User Information -->
              <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in" aria-labelledby="userDropdown">
                <a class="dropdown-item" href="#" data-toggle="modal" data-target="#logoutModal">
                  <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
                  Sair
                </a>
              </div>
            </li>

          </ul>

        </nav>
        <!-- End of Topbar -->

        <!-- Begin Page Content -->
        <div class="container-fluid">

          <!-- Estatísticas -->
          <div class="row">
            <!-- Total de Ganhos -->
            <div class="col-xl-6 col-md-6 mb-4">
              <div class="card border-left-success shadow h-100 py-2">
                <div class="card-body">
                  <div class="row no-gutters align-items-center">
                    <div class="col mr-2">
                      <div class="text-xs font-weight-bold text-success text-uppercase mb-1">Total de Ganhos</div>
                      <div id="total-ganhos" class="h5 mb-0 font-weight-bold text-gray-800">R$ 0,00</div>
                    </div>
                    <div class="col-auto">
                      <i class="fas fa-dollar-sign fa-2x text-gray-300"></i>
                    </div>
                  </div>
                </div>
              </div>
            </div>

                        <!-- Total de Apostas -->
            <div class="col-xl-6 col-md-6 mb-4">
              <div class="card border-left-warning shadow h-100 py-2">
                <div class="card-body">
                  <div class="row no-gutters align-items-center">
                    <div class="col mr-2">
                      <div class="text-xs font-weight-bold text-warning text-uppercase mb-1">Total de Apostas</div>
                      <div id="total-apostas" class="h5 mb-0 font-weight-bold text-gray-800">0</div>
                    </div>
                    <div class="col-auto">
                      <i class="fas fa-cubes fa-2x text-gray-300"></i>
                    </div>
                  </div>
                </div>
              </div>
            </div>

          </div>
          <!-- /.row -->

          <!-- Nova Aposta -->
          <h1 class="h3 mb-4 text-gray-800"><strong>Nova Aposta</strong></h1>

          <div class="form-group">
            <label for="numeros">Escolha 5 números</label>
            <div id="numeros-container" class="mb-3">
              <!-- Botões serão gerados aqui -->
            </div>
            <input type="hidden" id="numeros-selecionados" name="numeros-selecionados">
            <button type="button" class="btn btn-primary" id="enviar-aposta">Enviar Aposta</button>
            <div id="mensagem-aposta" class="mt-3"></div>
            <div id="numeros-sorteados" class="mt-3"></div>
          </div>

        </div>
        <!-- /.container-fluid -->

      </div>
      <!-- End of Main Content -->

    </div>
    <!-- End of Content Wrapper -->

  </div>
  <!-- End of Page Wrapper -->

  <!-- Scroll to Top Button-->
  <a class="scroll-to-top rounded" href="#page-top">
    <i class="fas fa-angle-up"></i>
  </a>

  <!-- Logout Modal-->
  <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">Pronto para sair?</h5>
          <button class="close" type="button" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">×</span>
          </button>
        </div>
        <div class="modal-body">Selecione "Sair" abaixo se você está pronto para encerrar a sessão atual.</div>
        <div class="modal-footer">
          <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancelar</button>
          <a class="btn btn-primary" href="<c:url value='/login'/>">Sair</a>
        </div>
      </div>
    </div>
  </div>

  <!-- Bootstrap core JavaScript-->
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Core plugin JavaScript-->
  <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

  <!-- Custom scripts for all pages-->
  <script src="js/sb-admin-2.min.js"></script>

  <!-- Page level plugins -->
  <script src="vendor/chart.js/Chart.min.js"></script>

  <!-- Page level custom scripts -->
  <script src="js/demo/chart-area-demo.js"></script>
  <script src="js/demo/chart-pie-demo.js"></script>

<script>
document.addEventListener('DOMContentLoaded', function() {
  const numerosContainer = document.getElementById('numeros-container');
  const numerosSelecionadosInput = document.getElementById('numeros-selecionados');
  const mensagemAposta = document.getElementById('mensagem-aposta');
  const numerosSorteadosDiv = document.getElementById('numeros-sorteados');
  const enviarApostaButton = document.getElementById('enviar-aposta');
  const numerosSelecionados = [];
  let totalApostas = 0;
  let totalGanhos = 0;

  for (let i = 1; i <= 30; i++) {
    const button = document.createElement('button');
    button.type = 'button';
    button.className = 'btn btn-outline-primary m-1';
    button.textContent = i.toString().padStart(2, '0');
    button.addEventListener('click', function() {
      const numero = i;
      const index = numerosSelecionados.indexOf(numero);
      if (index > -1) {
        numerosSelecionados.splice(index, 1);
        button.classList.remove('btn-primary');
        button.classList.add('btn-outline-primary');
      } else {
        if (numerosSelecionados.length < 5) {
          numerosSelecionados.push(numero);
          button.classList.remove('btn-outline-primary');
          button.classList.add('btn-primary');
        }
      }
      numerosSelecionadosInput.value = numerosSelecionados.join(',');
    });
    numerosContainer.appendChild(button);
  }

  enviarApostaButton.addEventListener('click', function() {
    if (numerosSelecionados.length === 5) {
      const numerosSorteados = gerarNumerosSorteados();
      const acertos = contarAcertos(numerosSelecionados, numerosSorteados);
      if (acertos > 0) {
        const premio = calcularPremio(acertos);
        totalGanhos += premio; // Adiciona o prêmio ao total de ganhos
        exibirResultado(acertos, premio, numerosSorteados);
      } else {
        mensagemAposta.textContent = 'Que pena, não foi dessa vez. Nenhum numero acertado.';
        mensagemAposta.className = 'alert alert-danger';
        numerosSorteadosDiv.innerHTML = ''; // Limpa os números sorteados
      }
    } else {
      mensagemAposta.textContent = 'Você deve selecionar exatamente 5 números!';
      mensagemAposta.className = 'alert alert-danger';
      numerosSorteadosDiv.innerHTML = ''; // Limpa os números sorteados
    }

    totalApostas++; // Incrementa o total de apostas
    atualizarEstatisticas(); // Atualiza as estatísticas na tela
  });

  // Função para atualizar as estatísticas na tela
  function atualizarEstatisticas() {
    const totalApostasElement = document.getElementById('total-apostas');
    const totalGanhosElement = document.getElementById('total-ganhos');
    totalApostasElement.textContent = totalApostas;
    totalGanhosElement.textContent = 'R$ ' + totalGanhos.toFixed(2);
  }

  // Função para gerar números sorteados aleatórios
  function gerarNumerosSorteados() {
    const numerosSorteados = [];
    while (numerosSorteados.length < 5) {
      const numero = Math.floor(Math.random() * 30) +       1;
      if (!numerosSorteados.includes(numero)) {
          numerosSorteados.push(numero);
        }
      }
      return numerosSorteados;
    }

    // Função para contar acertos
    function contarAcertos(aposta, sorteio) {
      let acertos = 0;
      for (const numero of aposta) {
        if (sorteio.includes(numero)) {
          acertos++;
        }
      }
      return acertos;
    }

    // Função para calcular o prêmio
    function calcularPremio(acertos) {
      return acertos * 20; // Cada número acertado vale R$ 20
    }

    // Função para exibir o resultado na tela
    function exibirResultado(acertos, premio, numerosSorteados) {
      mensagemAposta.textContent = 'Você acertou ' + acertos + ' números e ganhou um prêmio de R$' + premio.toFixed(2) + '.';
      mensagemAposta.className = 'alert alert-success';
      
      // Exibir os números sorteados
      let numerosSorteadosHTML = '<p>Números Sorteados: ';
      numerosSorteados.forEach(numero => {
        numerosSorteadosHTML += '<span class="badge badge-secondary">' + numero + '</span> ';
      });
      numerosSorteadosHTML += '</p>';
      numerosSorteadosDiv.innerHTML = numerosSorteadosHTML;
    }
  });
  </script>

  </body>
  </html>
