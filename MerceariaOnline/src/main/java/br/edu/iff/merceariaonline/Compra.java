/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.edu.iff.merceariaonline;

import java.io.Serializable;
import java.math.BigDecimal;
import java.sql.Date;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 *
 * @author aluno
 */
@Entity
@Table(name="compra")
public class Compra implements Serializable {

    /**
     * @return the CodCompra
     */
    public Integer getCodCompra() {
        return CodCompra;
    }

    /**
     * @param CodCompra the CodCompra to set
     */
    public void setCodCompra(Integer CodCompra) {
        this.CodCompra = CodCompra;
    }

    /**
     * @return the DataDaCompra
     */
    public Date getDataDaCompra() {
        return DataDaCompra;
    }

    /**
     * @param DataDaCompra the DataDaCompra to set
     */
    public void setDataDaCompra(Date DataDaCompra) {
        this.DataDaCompra = DataDaCompra;
    }

    /**
     * @return the ValorTotal
     */
    public BigDecimal getValorTotal() {
        return ValorTotal;
    }

    /**
     * @param ValorTotal the ValorTotal to set
     */
    public void setValorTotal(BigDecimal ValorTotal) {
        this.ValorTotal = ValorTotal;
    }
    @Id
    @Column(name = "comp_cd_compra")
    private Integer CodCompra;
    @Id
    @Column(name = "comp_dt_data")
    private Date DataDaCompra;
    @Id
    @Column(name = "comp_vl_total")
    private BigDecimal ValorTotal;
    
    
}
