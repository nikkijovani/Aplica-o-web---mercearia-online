/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.edu.iff.merceariaonline;

import java.io.Serializable;
import java.math.BigDecimal;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 *
 * @author aluno
 */
@Entity
@Table(name="produto")
public class Produto implements Serializable {

    /**
     * @return the CodProduto
     */ 
    public Integer getCodProduto() {
        return CodProduto;
    }

    /**
     * @param CodProduto the CodProduto to set
     */
    public void setCodProduto(Integer CodProduto) {
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
    @Id
    @Column(name = "prod_cd_produto")
    private Integer CodProduto;
    @Id
    @Column(name = "prod_nm_nome")
    private String NomeDoProduto;
    @Id
    @Column(name = "prod_vl_unidade")
    private BigDecimal ValorDaUnidade;
    @Id
    @Column(name = "prod_nm_marca")
    private String NomeDaMarca; 
}
