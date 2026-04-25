package br.com.ifsp.tp.servlet;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class Banco {

    private static List<Produto> lista = new ArrayList<>();
    private static int chaveSequencial = 1;

    public void adiciona(Produto produto) {
        produto.setId(Banco.chaveSequencial++);
        Banco.lista.add(produto);
    }

    public List<Produto> getProdutos() {
        return Banco.lista;
    }

    public void removeProduto(int id) {
        Iterator<Produto> it = lista.iterator();
        while(it.hasNext()) {
            Produto prod = it.next();
            if(prod.getId() == id) {
                it.remove();
            }
        }
    }

    public Produto buscaProdutoPelaId(int id) {
        for (Produto produto : lista) {
            if(produto.getId() == id) {
                return produto;
            }
        }
        return null;
    }
}