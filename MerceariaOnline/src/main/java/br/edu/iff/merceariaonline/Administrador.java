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
@Table(name = "administrador")
public class Administrador implements Serializable {

    /**
     * @return the CodAdministrador
     */
    public Integer getCodAdministrador() {
        return CodAdministrador;
    }

    /**
     * @param CodAdministrador the CodAdministrador to set
     */
    public void setCodAdministrador(Integer CodAdministrador) {
        this.CodAdministrador = CodAdministrador;
    }

    /**
     * @return the NomeAdministrador
     */
    public String getNomeAdministrador() {
        return NomeAdministrador;
    }

    /**
     * @param NomeAdministrador the NomeAdministrador to set
     */
    public void setNomeAdministrador(String NomeAdministrador) {
        this.NomeAdministrador = NomeAdministrador;
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
    @Column(name = "adm_cd_administrador")
    private Integer CodAdministrador;
    @Id
    @Column(name = "adm_nm_nome")
    private String NomeAdministrador;
    @Id
    @Column(name="adm_nr_cpf")
    private Integer NumeroCpf;
    @Id
    @Column(name = "adm_nr_telefone")
    private Integer NumeroTelefone;
    @Id
    @Column(name = "adm_ds_senha")
    private String Senha;
      
    
    
    
    
    
    
}
