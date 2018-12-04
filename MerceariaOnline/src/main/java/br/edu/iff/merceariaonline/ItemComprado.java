/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.edu.iff.merceariaonline;

import java.io.Serializable;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 *
 * @author aluno
 */
@Entity
@Table(name = "item_comprado")
public class ItemComprado implements Serializable {

    /**
     * @return the CodItemComprado
     */
    public Integer getCodItemComprado() {
        return CodItemComprado;
    }

    /**
     * @param CodItemComprado the CodItemComprado to set
     */
    public void setCodItemComprado(Integer CodItemComprado) {
        this.CodItemComprado = CodItemComprado;
    }

    /**
     * @return the Quantidade
     */
    public Integer getQuantidade() {
        return Quantidade;
    }

    /**
     * @param Quantidade the Quantidade to set
     */
    public void setQuantidade(Integer Quantidade) {
        this.Quantidade = Quantidade;
    }

    /**
     * @return the QuantidadeTotal
     */
    public Integer getQuantidadeTotal() {
        return QuantidadeTotal;
    }

    /**
     * @param QuantidadeTotal the QuantidadeTotal to set
     */
    public void setQuantidadeTotal(Integer QuantidadeTotal) {
        this.QuantidadeTotal = QuantidadeTotal;
    }
    @Id
    @Column(name = "item_cd_itemcomprado")
    private Integer CodItemComprado;
    @Id
    @Column(name = "item_nr_quantidade")
    private Integer Quantidade;
    @Id
    @Column(name = "item_nr_total")
    private Integer QuantidadeTotal;
    
    
    
}
