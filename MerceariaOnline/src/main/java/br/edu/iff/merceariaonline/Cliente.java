/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.edu.iff.merceariaonline;

import java.sql.Date;

/**
 *
 * @author aluno
 */
public class Cliente {

    /**
     * @return the CodCliente
     */
    public int getCodCliente() {
        return CodCliente;
    }

    /**
     * @param CodCliente the CodCliente to set
     */
    public void setCodCliente(int CodCliente) {
        this.CodCliente = CodCliente;
    }

    /**
     * @return the NomeCliente
     */
    public String getNomeCliente() {
        return NomeCliente;
    }

    /**
     * @param NomeCliente the NomeCliente to set
     */
    public void setNomeCliente(String NomeCliente) {
        this.NomeCliente = NomeCliente;
    }

    /**
     * @return the DataDeNascimento
     */
    public Date getDataDeNascimento() {
        return DataDeNascimento;
    }

    /**
     * @param DataDeNascimento the DataDeNascimento to set
     */
    public void setDataDeNascimento(Date DataDeNascimento) {
        this.DataDeNascimento = DataDeNascimento;
    }

    /**
     * @return the NumeroTelefone
     */
    public int getNumeroTelefone() {
        return NumeroTelefone;
    }

    /**
     * @param NumeroTelefone the NumeroTelefone to set
     */
    public void setNumeroTelefone(int NumeroTelefone) {
        this.NumeroTelefone = NumeroTelefone;
    }

    /**
     * @return the NumeroCpf
     */
    public int getNumeroCpf() {
        return NumeroCpf;
    }

    /**
     * @param NumeroCpf the NumeroCpf to set
     */
    public void setNumeroCpf(int NumeroCpf) {
        this.NumeroCpf = NumeroCpf;
    }

    /**
     * @return the NumeroRg
     */
    public int getNumeroRg() {
        return NumeroRg;
    }

    /**
     * @param NumeroRg the NumeroRg to set
     */
    public void setNumeroRg(int NumeroRg) {
        this.NumeroRg = NumeroRg;
    }

    /**
     * @return the Senha
     */
    public String getSenha() {
        return Senha;
    }

    /**
     * @param Senha the Senha to set
     */
    public void setSenha(String Senha) {
        this.Senha = Senha;
    }
    private int CodCliente;
    private String NomeCliente;
    private Date DataDeNascimento;
    private int NumeroTelefone;
    private int NumeroCpf;
    private int NumeroRg;
    private String Senha;
     
}
