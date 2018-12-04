/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.edu.iff.merceariaonline;

/**
 *
 * @author aluno
 */
public class ItemComprado {

    /**
     * @return the CodItemComprado
     */
    public int getCodItemComprado() {
        return CodItemComprado;
    }

    /**
     * @param CodItemComprado the CodItemComprado to set
     */
    public void setCodItemComprado(int CodItemComprado) {
        this.CodItemComprado = CodItemComprado;
    }

    /**
     * @return the Quantidade
     */
    public int getQuantidade() {
        return Quantidade;
    }

    /**
     * @param Quantidade the Quantidade to set
     */
    public void setQuantidade(int Quantidade) {
        this.Quantidade = Quantidade;
    }

    /**
     * @return the QuantidadeTotal
     */
    public int getQuantidadeTotal() {
        return QuantidadeTotal;
    }

    /**
     * @param QuantidadeTotal the QuantidadeTotal to set
     */
    public void setQuantidadeTotal(int QuantidadeTotal) {
        this.QuantidadeTotal = QuantidadeTotal;
    }
    private int CodItemComprado;
    private int Quantidade;
    private int QuantidadeTotal;
    
    
    
}
