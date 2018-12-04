/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.edu.iff.merceariaonline;

import java.math.BigDecimal;
import java.sql.Date;

/**
 *
 * @author aluno
 */
public class Compra {

    /**
     * @return the CodCompra
     */
    public int getCodCompra() {
        return CodCompra;
    }

    /**
     * @param CodCompra the CodCompra to set
     */
    public void setCodCompra(int CodCompra) {
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
    private int CodCompra;
    private Date DataDaCompra;
    private BigDecimal ValorTotal;
    
    
}
