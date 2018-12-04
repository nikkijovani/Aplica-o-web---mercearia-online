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
@Table(name= "endereco")
public class Endereco implements Serializable {

    /**
     * @return the CodEndereco
     */
    public int getCodEndereco() {
        return CodEndereco;
    }

    /**
     * @param CodEndereco the CodEndereco to set
     */
    public void setCodEndereco(Integer CodEndereco) {
        this.CodEndereco = CodEndereco;
    }

    /**
     * @return the NomeDaCidade
     */
    public String getNomeDaCidade() {
        return NomeDaCidade;
    }

    /**
     * @param NomeDaCidade the NomeDaCidade to set
     */
    public void setNomeDaCidade(String NomeDaCidade) {
        this.NomeDaCidade = NomeDaCidade;
    }

    /**
     * @return the Cep
     */
    public String getCep() {
        return Cep;
    }

    /**
     * @param Cep the Cep to set
     */
    public void setCep(String Cep) {
        this.Cep = Cep;
    }

    /**
     * @return the NomeDaRua
     */
    public String getNomeDaRua() {
        return NomeDaRua;
    }

    /**
     * @param NomeDaRua the NomeDaRua to set
     */
    public void setNomeDaRua(String NomeDaRua) {
        this.NomeDaRua = NomeDaRua;
    }

    /**
     * @return the NumeroDaCasa
     */
    public Integer getNumeroDaCasa() {
        return NumeroDaCasa;
    }

    /**
     * @param NumeroDaCasa the NumeroDaCasa to set
     */
    public void setNumeroDaCasa(Integer NumeroDaCasa) {
        this.NumeroDaCasa = NumeroDaCasa;
    }

    /**
     * @return the Complemento
     */
    public String getComplemento() {
        return Complemento;
    }

    /**
     * @param Complemento the Complemento to set
     */
    public void setComplemento(String Complemento) {
        this.Complemento = Complemento;
    }
    @Id
    @Column(name="end_cd_enderco")
    private Integer CodEndereco;
    @Id
    @Column(name="end_nm_cidade")
    private String NomeDaCidade;
    @Id
    @Column(name="end_ds_cep")
    private String Cep;
    @Id
    @Column(name="end_nm_rua")
    private String NomeDaRua;
    @Id
    @Column(name="end_nr_casa")
    private Integer NumeroDaCasa;
    @Id
    @Column(name="end_ds_complemento")
    private String Complemento;
     
}
