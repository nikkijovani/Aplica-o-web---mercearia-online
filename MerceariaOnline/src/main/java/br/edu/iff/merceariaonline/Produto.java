/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.edu.iff.merceariaonline;

import java.math.BigDecimal;

/**
 *
 * @author aluno
 */
public class Produto {

    /**
     * @return the CodProduto
     */ 
    public int getCodProduto() {
        return CodProduto;
    }

    /**
     * @param CodProduto the CodProduto to set
     */
    public void setCodProduto(int CodProduto) {
        this.CodProduto = CodProduto;
    }

    /**
     * @return the NomeDoProduto
     */
    public String getNomeDoProduto() {
        return NomeDoProduto;
    }

    /**
     * @param NomeDoProduto the NomeDoProduto to set
     */
    public void setNomeDoProduto(String NomeDoProduto) {
        this.NomeDoProduto = NomeDoProduto;
    }

    /**
     * @return the ValorDaUnidade
     */
    public BigDecimal getValorDaUnidade() {
        return ValorDaUnidade;
    }

    /**
     * @param ValorDaUnidade the ValorDaUnidade to set
     */
    public void setValorDaUnidade(BigDecimal ValorDaUnidade) {
        this.ValorDaUnidade = ValorDaUnidade;
    }

    /**
     * @return the NomeDaMarca
     */
    public String getNomeDaMarca() {
        return NomeDaMarca;
    }

    /**
     * @param NomeDaMarca the NomeDaMarca to set
     */
    public void setNomeDaMarca(String NomeDaMarca) {
        this.NomeDaMarca = NomeDaMarca;
    }
    private int CodProduto;
    private String NomeDoProduto;
    private BigDecimal ValorDaUnidade;
    private String NomeDaMarca; 
}
