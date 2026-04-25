<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Novo Registro</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&display=swap" rel="stylesheet">
    <style>
        body {
        	font-family: 'Inter', sans-serif;
        	background-color: #f3f4f6;
        	color: #1f2937;
        }
        .modern-card {
        	background: #ffffff;
        	border: 1px solid #e5e7eb;
        	border-radius: 16px;
        	box-shadow: 0 4px 6px -1px rgba(0, 0, 0, 0.05);
        }
        .modern-header {
        	padding: 24px 32px;
        	border-bottom: 1px solid #e5e7eb;
        }
        .modern-header h4 {
        	font-weight: 600;
        	color: #111827;
        	letter-spacing: -0.025em;
        	margin: 0;
        }
        .form-label {
        	font-weight: 500;
        	font-size: 0.875rem;
        	color: #374151;
        	margin-bottom: 0.5rem;
        }
        .form-control {
        	border-radius: 8px;
        	border: 1px solid #d1d5db;
        	padding: 0.625rem 1rem;
        	font-size: 0.875rem;
        	box-shadow: 0 1px 2px 0 rgba(0, 0, 0, 0.05);
        	transition: all 0.2s;
        }
        .form-control:focus {
        	border-color: #3b82f6;
        	box-shadow: 0 0 0 3px rgba(59, 130, 246, 0.15);
        	outline: none;
        }
        .btn-modern {
        	border-radius: 8px;
        	padding: 10px 20px;
        	font-weight: 500;
        	font-size: 0.875rem;
        	transition: all 0.2s;
        }
        .btn-primary-custom {
        	background-color: #2563eb;
        	border: none;
        	color: white;
        }
        .btn-primary-custom:hover {
        	background-color: #1d4ed8;
        	color: white;
        	transform: translateY(-1px);
        	box-shadow: 0 4px 12px rgba(37, 99, 235, 0.2);
        }
        .btn-outline-custom {
        	background-color: #ffffff;
        	border: 1px solid #d1d5db;
        	color: #4b5563;
        }
        .btn-outline-custom:hover {
        	background-color: #f9fafb;
        	color: #111827;
        	border-color: #9ca3af;
        }
    </style>
</head>
<body class="py-5">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-lg-8">
                <div class="modern-card">
                    <div class="modern-header">
                        <h4>Cadastrar Produto</h4>
                        <p class="text-muted small mt-1 mb-0">Preencha os dados abaixo para registrar um novo item no sistema.</p>
                    </div>
                    <div class="card-body p-4 p-md-5">
                        <form action="novoProduto" method="post">
                            <div class="row mb-4">
                                <div class="col-md-8">
                                    <label class="form-label">Nome do Produto</label>
                                    <input type="text" name="nome" class="form-control" placeholder="Ex: Teclado Mecânico Keychron" required />
                                </div>
                                <div class="col-md-4 mt-3 mt-md-0">
                                    <label class="form-label">Unid. de Compra</label>
                                    <input type="number" name="unidadeCompra" class="form-control" placeholder="0" required />
                                </div>
                            </div>
                            
                            <div class="mb-4">
                                <label class="form-label">Descrição Técnica</label>
                                <textarea name="descricao" class="form-control" rows="3" placeholder="Detalhes adicionais sobre o produto..." required></textarea>
                            </div>
                            
                            <div class="row mb-5">
                                <div class="col-md-6">
                                    <label class="form-label">Quantidade Prevista (Mês)</label>
                                    <input type="number" step="0.01" name="qtdPrevistoMes" class="form-control" placeholder="0.00" required />
                                </div>
                                <div class="col-md-6 mt-3 mt-md-0">
                                    <label class="form-label">Preço Máx. Comprado (R$)</label>
                                    <input type="number" step="0.01" name="precoMaxComprado" class="form-control" placeholder="0.00" required />
                                </div>
                            </div>
                            
                            <div class="d-flex justify-content-end gap-3 pt-3 border-top">
                                <a href="index.jsp" class="btn btn-modern btn-outline-custom text-decoration-none">Cancelar</a>
                                <button type="submit" class="btn btn-modern btn-primary-custom">Salvar Produto</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>