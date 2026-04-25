package br.com.ifsp.tp.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/novoProduto")
public class NovoProdutoServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    		throws ServletException, IOException {
        Produto produto = new Produto();
        produto.setNome(request.getParameter("nome"));
        produto.setUnidadeCompra(Integer.parseInt(request.getParameter("unidadeCompra")));
        produto.setDescricao(request.getParameter("descricao"));
        produto.setQtdPrevistoMes(Double.parseDouble(request.getParameter("qtdPrevistoMes")));
        produto.setPrecoMaxComprado(Double.parseDouble(request.getParameter("precoMaxComprado")));

        Banco banco = new Banco();
        banco.adiciona(produto);

        response.sendRedirect("listaProdutos");
    }
}