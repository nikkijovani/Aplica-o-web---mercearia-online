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
@Table(name = "sessao")
public class Sessao implements Serializable {

    /**
     * @return the CodSessao
     */
    public Integer getCodSessao() {
        return CodSessao;
    }

    /**
     * @param CodSessao the CodSessao to set
     */
    public void setCodSessao(Integer CodSessao) {
        this.CodSessao = CodSessao;
    }

    /**
     * @return the NomeSessao
     */
    public String getNomeSessao() {
        return NomeSessao;
    }

    /**
     * @param NomeSessao the NomeSessao to set
     */
    public void setNomeSessao(String NomeSessao) {
        this.NomeSessao = NomeSessao;
    }
    @Id
    @Column(name = "ses_cd_sessao")
    private Integer CodSessao;
    @Id
    @Column(name = "ses_nm_sessao")
    private String NomeSessao;   
}
