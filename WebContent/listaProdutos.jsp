<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Base de Dados</title>
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
        	overflow: hidden;
        }
        .modern-header {
        	background-color: #ffffff;
        	border-bottom: 1px solid #e5e7eb;
        	padding: 20px 24px;
        	display: flex;
        	justify-content: space-between;
        	align-items: center;
        }
        .modern-header h4 {
        	font-weight: 600;
        	color: #111827;
        	letter-spacing: -0.025em;
        	margin: 0;
        }
        .table-custom {
        	margin-bottom: 0;
        }
        .table-custom thead th {
        	background-color: #f9fafb;
        	color: #4b5563;
        	font-size: 0.75rem;
        	font-weight: 600;
        	text-transform: uppercase;
        	letter-spacing: 0.05em;
        	border-bottom: 1px solid #e5e7eb;
        	padding: 12px 24px;
        }
        .table-custom tbody td {
        	padding: 16px 24px;
        	vertical-align: middle;
        	border-bottom: 1px solid #f3f4f6;
        	font-size: 0.875rem;
        	color: #374151;
        }
        .table-custom tbody tr:hover {
        	background-color: #f9fafb;
        }
        .btn-modern {
        	border-radius: 6px;
        	padding: 6px 12px;
        	font-size: 0.875rem;
        	font-weight: 500;
        	transition: all 0.2s;
        }
        .btn-primary-custom {
        	background-color: #2563eb; 
        	border: none;
        	color: white;
        	padding: 8px 16px;
        }
        .btn-primary-custom:hover {
        	background-color: #1d4ed8;
        	color: white;
        }
        .btn-action-edit {
        	background-color: #f3f4f6;
        	color: #4b5563;
        	border: 1px solid #d1d5db;
        }
        .btn-action-edit:hover {
        	background-color: #e5e7eb;
        	color: #1f2937;
        }
        .btn-action-delete {
        	background-color: transparent;
        	color: #dc2626;
        	border: 1px solid transparent;
        }
        .btn-action-delete:hover {
        	background-color: #fee2e2;
        	border-color: #f87171;
        }
    </style>
</head>
<body class="py-5">
    <div class="container">
        <div class="modern-card">
            <div class="modern-header">
                <div>
                    <h4>Base de Produtos</h4>
                    <p class="text-muted small mt-1 mb-0">Gerencie todos os produtos cadastrados no sistema.</p>
                </div>
                <a href="formNovoProduto.jsp" class="btn btn-modern btn-primary-custom text-decoration-none">
                    + Novo Produto
                </a>
            </div>
            
            <div class="table-responsive">
                <table class="table table-custom">
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>Produto</th>
                            <th>Unid.</th>
                            <th>Descrição</th>
                            <th>Qtd Prevista</th>
                            <th>Preço Máx</th>
                            <th class="text-end">Ações</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach items="${produtos}" var="prod">
                            <tr>
                                <td class="text-muted fw-medium">#${prod.id}</td>
                                <td class="fw-medium text-dark">${prod.nome}</td>
                                <td>${prod.unidadeCompra}</td>
                                <td class="text-truncate" style="max-width: 200px;">${prod.descricao}</td>
                                <td>${prod.qtdPrevistoMes}</td>
                                <td class="fw-medium">R$ ${prod.precoMaxComprado}</td>
                                <td class="text-end">
                                    <a href="mostraProduto?id=${prod.id}" class="btn btn-modern btn-action-edit text-decoration-none me-1">Editar</a>
                                    <a href="removeProduto?id=${prod.id}" class="btn btn-modern btn-action-delete text-decoration-none" onclick="return confirm('Confirmar exclusão permanente deste ativo?');">Excluir</a>
                                </td>
                            </tr>
                        </c:forEach>
                        <c:if test="${empty produtos}">
                            <tr>
                                <td colspan="7" class="text-center py-5 text-muted">
                                    Nenhum registro encontrado na base de dados.
                                </td>
                            </tr>
                        </c:if>
                    </tbody>
                </table>
            </div>
            <div class="p-3 bg-white border-top border-light text-start">
                <a href="index.jsp" class="btn btn-modern btn-action-edit text-decoration-none ms-3 mb-2 mt-2">← Voltar ao Menu</a>
            </div>
        </div>
    </div>
</body>
</html>