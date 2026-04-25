package br.com.ifsp.tp.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/alteraProduto")
public class AlteraProdutoServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    		throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        
        Banco banco = new Banco();
        Produto produto = banco.buscaProdutoPelaId(id);
        
        produto.setNome(request.getParameter("nome"));
        produto.setUnidadeCompra(Integer.parseInt(request.getParameter("unidadeCompra")));
        produto.setDescricao(request.getParameter("descricao"));
        produto.setQtdPrevistoMes(Double.parseDouble(request.getParameter("qtdPrevistoMes")));
        produto.setPrecoMaxComprado(Double.parseDouble(request.getParameter("precoMaxComprado")));

        response.sendRedirect("listaProdutos");
    }
}