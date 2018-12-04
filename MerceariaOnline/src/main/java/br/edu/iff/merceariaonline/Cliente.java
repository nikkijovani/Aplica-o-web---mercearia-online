/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.edu.iff.merceariaonline;

import java.io.Serializable;
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
@Table(name = "cliente")
public class Cliente implements Serializable {

    /**
     * @return the CodCliente
     */
    public Integer getCodCliente() {
        return CodCliente;
    }

    /**
     * @param CodCliente the CodCliente to set
     */
    public void setCodCliente(Integer CodCliente) {
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
    public Integer getNumeroTelefone() {
        return NumeroTelefone;
    }

    /**
     * @param NumeroTelefone the NumeroTelefone to set
     */
    public void setNumeroTelefone(Integer NumeroTelefone) {
        this.NumeroTelefone = NumeroTelefone;
    }

    /**
     * @return the NumeroCpf
     */
    public Integer getNumeroCpf() {
        return NumeroCpf;
    }

    /**
     * @param NumeroCpf the NumeroCpf to set
     */
    public void setNumeroCpf(Integer NumeroCpf) {
        this.NumeroCpf = NumeroCpf;
    }

    /**
     * @return the NumeroRg
     */
    public Integer getNumeroRg() {
        return NumeroRg;
    }

    /**
     * @param NumeroRg the NumeroRg to set
     */
    public void setNumeroRg(Integer NumeroRg) {
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
    @Id
    @Column(name = "clie_cd_cliente")
    private Integer CodCliente;
    @Id
    @Column(name = "clie_nm_nome")
    private String NomeCliente;
    @Id
    @Column(name = "clie_dt_nascimento")
    private Date DataDeNascimento;
    @Id
    @Column(name = "clie_nr_telefone")
    private Integer NumeroTelefone;
    @Id
    @Column(name = "clie_nr_cpf")
    private Integer NumeroCpf;
    @Id
    @Column(name = "clie_nr_rg")
    private Integer NumeroRg;
    @Id
    @Column(name = "clie_ds_senha")
    private String Senha;
     
}
