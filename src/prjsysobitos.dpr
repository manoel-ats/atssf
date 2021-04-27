program prjSysObitos;



uses
  Forms,
  uPrincipal in 'uprincipal.pas' {Principal},
  uPai in 'upai.pas' {fPai},
  uCad_Obitos in 'ucad_obitos.pas' {Cad_Obitos},
  UDM in 'udm.pas' {DM: TDataModule},
  ufDlgLogin in 'ufdlglogin.pas' {fDlgLogin},
  uDmApp in 'udmapp.pas' {dmApp: TDataModule},
  uSobre in 'usobre.pas' {fSobre},
  uSplash in 'usplash.pas' {fSplash},
  uFuncionarios in 'ufuncionarios.pas' {fFuncionarios},
  uProcurar in 'uprocurar.pas' {fProcurar},
  uEmpresa in 'uempresa.pas' {fEmpresa},
  uFiltro_Obitos in 'uFiltro_Obitos.pas' {Filtro_Obitos},
  uSeries in 'useries.pas' {fSeries},
  uClinicas in 'uclinicas.pas' {fClinicas},
  uGrupo in 'ugrupo.pas' {fGrupo},
  uReceber in 'ureceber.pas' {fReceber},
  uConsulta in 'uconsulta.pas' {fConsulta},
  UnitCadastroUsuarios in 'unitcadastrousuarios.pas' {FormCadastroUsuarios},
  uNovoUsuario in 'unovousuario.pas' {fNovoUsuario},
  uRel_parcelas in 'urel_parcelas.pas' {Rel_parcelas},
  uCad_Vendedor in 'uCad_Vendedor.pas' {fCad_Vendedor},
  uCobranca in 'uCobranca.pas' {fCobranca},
  Rel_obitos in 'rel_obitos.pas' {fRel_obitos},
  uProc_socio in 'uproc_socio.pas' {fProc_socio},
  uGr_obitos in 'uGr_obitos.pas' {fGr_obitos},
  uMostra_Insc_vazia in 'umostra_insc_vazia.pas' {fMostra_Insc_vazia},
  uSocios_D in 'usocios_d.pas' {fSocios_D},
  uExclusao in 'uExclusao.pas' {fExclusao},
  uTemas in 'uTemas.pas' {fTemas},
  uFiltro_CR1 in 'uFiltro_CR1.pas' {Filtro_CR1},
  uGeraLote in 'ugeralote.pas' {fGeraLote},
  uVerLotes in 'uVerLotes.pas' {fVerLotes},
  uParametro in 'uparametro.pas' {fParametro},
  uRel_Circular in 'urel_circular.pas' {fRel_Circular},
  uMensalidades in 'umensalidades.pas' {fMensalidades},
  uContrato in 'ucontrato.pas' {fContrato},
  uCarteirinha in 'uCarteirinha.pas' {fCarteirinha},
  uGerencia_Acessos in 'ugerencia_acessos.pas' {fGerencia_Acessos},
  uRecibo in 'urecibo.pas' {fRecibo},
  uConfirma_renovar in 'uConfirma_renovar.pas' {fConfirma_renovar},
  uReceber_MS in 'uReceber_MS.pas' {fReceber_MS},
  uRenovar in 'urenovar.pas' {fRenovar},
  uRel_Carne in 'urel_carne.pas' {fRel_Carne},
  uBairro in 'ubairro.pas' {fBairro},
  uMunicipio in 'uMunicipio.pas' {fMunicipio},
  uCartorio in 'uCartorio.pas' {fCartorio},
  uUrnas in 'uurnas.pas' {fUrnas},
  uCompra_urna in 'ucompra_urna.pas' {fCompra_urna},
  uMarcas in 'uMarcas.pas' {fMarcas},
  uFamilia in 'uFamilia.pas' {fFamilia},
  uFornecedor in 'ufornecedor.pas' {fFornecedor},
  uFinaliza_Compra in 'ufinaliza_compra.pas' {fFinaliza_Compra},
  uVendas in 'uvendas.pas' {fVendas},
  uCP in 'ucp.pas' {fCP},
  uGeraArquivo in 'ugeraarquivo.pas' {fGeraArquivo},
  uRel_socios in 'uRel_socios.pas' {fRel_socios},
  uProc_end in 'uProc_end.pas' {fProc_end},
  uNotaFalec in 'uNotaFalec.pas' {fNotaFalec},
  uBanco in 'uBanco.pas' {fBanco},
  uFiltroProcura in 'uFiltroProcura.pas' {fFiltroProcura},
  uProcGrupo in 'uProcGrupo.pas' {fProcGrupo},
  uMedico in 'uMedico.pas' {fMedico},
  uCheques in 'uCheques.pas' {fCheques},
  uRel_Estoque in 'uRel_Estoque.pas' {fRel_Estoque},
  uProcura_Trimestral in 'uProcura_Trimestral.pas' {fProcura_Trimestral},
  uAtualizaLote in 'uAtualizaLote.pas' {fAtualizaLote},
  uTrimestral_cob in 'uTrimestral_cob.pas' {fTrimestral_cob},
  uRelatorios in 'uRelatorios.pas' {fRelatorios},
  uFluxo_Caixa in 'uFluxo_Caixa.pas' {fFluxo_Caixa},
  uDespesas in 'uDespesas.pas' {fDespesas},
  uCCusto in 'uCCusto.pas' {fCCusto},
  uReceitas in 'uReceitas.pas' {fReceitas},
  uPagarTitulos in 'uPagarTitulos.pas' {fPagarTitulos},
  uVendas_Terminal in 'uVendas_Terminal.pas' {fvendas_Terminal},
  uVenda_Finalizar in 'uVenda_Finalizar.pas' {fVenda_Finalizar},
  uSocio_Cadastro in 'uSocio_Cadastro.pas' {fSocio_Cadastro},
  uSocio_Procura in 'uSocio_Procura.pas' {fSocio_Procura},
  uMuda_Plano in 'uMuda_Plano.pas' {fMuda_Plano},
  uObs in 'uObs.pas' {fObs},
  uAltera_contrato in 'uAltera_contrato.pas' {faltera_contrato},
  uAltera_Grupo in 'uAltera_Grupo.pas' {fAltera_Grupo},
  uNumero_Boleto in 'uNumero_Boleto.pas' {fNumero_Boleto},
  uNumero_boleto_1 in 'uNumero_boleto_1.pas' {fNumero_boleto_1},
  uEtiquetas in 'uEtiquetas.pas' {fEtiquetas},
  uLogs in 'uLogs.pas' {fLogs},
  uFiltro_CR in 'uFiltro_CR.pas' {Filtro_CR},
  uCad_Clientes in 'ucad_clientes.pas' {fCad_Cliente},
  udm_sge in 'udm_sge.pas' {DM_SGE: TDataModule},
  uListaSocios in 'uListaSocios.pas' {fListaSocios},
  uGeraTituloAvulso in 'uGeraTituloAvulso.pas' {fGeraTituloAvulso},
  uAtualiza_Mensais in 'uAtualiza_Mensais.pas' {fAtualiza_Mensais},
  uArquivoRetorno in 'uArquivoRetorno.pas' {fArquivoRetorno},
  uAvisos in 'uAvisos.pas' {fAvisos},
  uSocios in 'uSocios.pas' {fSocios},
  uBaixaretorno in 'uBaixaretorno.pas' {fBaixaretorno},
  uProcuraCBR in 'uProcuraCBR.pas' {fProcuraCBR},
  uAtualizaSistema in 'uAtualizaSistema.pas' {fAtualizaSistema},
  uLib in 'uLib.pas',
  uProcura in 'uProcura.pas' {fProcura},
  udmconsulta in 'udmconsulta.pas' {dmconsulta: TDataModule},
  uGeraTitulos in 'uGeraTitulos.pas' {fGeraTitulos},
  sCtrlResize in 'sCtrlResize.pas',
  uContasReceber in 'uContasReceber.pas' {fContasReceber},
  uRemessaBanco in 'uRemessaBanco.pas' {fRemessaBanco},
  uGeraTitulosMensais in 'uGeraTitulosMensais.pas' {fGeraTitulosMensais},
  uGerarCobranca in 'uGerarCobranca.pas' {fGerarCobranca},
  uArquivoRetorno1 in 'uArquivoRetorno1.pas' {fArquivoRetorno1},
  ubaixaretorno1 in 'ubaixaretorno1.pas' {fBaixaretorno1},
  URemessaBanco1 in 'URemessaBanco1.pas' {fRemessaBanco1},
  UfRemessaAcordo in 'UfRemessaAcordo.pas' {fRemessaAcordo},
  uPendente in 'uPendente.pas' {fPendente},
  U_aniversariantes in 'U_aniversariantes.pas' {F_aniversariantes},
  U_COBRANCA in 'U_COBRANCA.pas' {F_COBRANCA},
  U_BlobImageFB in 'U_BlobImageFB.pas',
  U_Autoriza in 'U_Autoriza.pas' {F_autoriza},
  uArquivoRetornoBrad in 'uArquivoRetornoBrad.pas' {fArquivoRetornoBrad},
  uTaxasMes in 'uTaxasMes.pas' {fTaxasMes},
  uRel_cad_exc in 'uRel_cad_exc.pas' {fRel_cad_exc},
  uSeguro in 'uSeguro.pas' {fSeguro},
  uContar in 'uContar.pas' {fContar},
  uVerLotesA in 'uVerLotesA.pas' {fVerLotesA},
  uestcivil in 'uestcivil.pas' {fEstcivil},
  utipoend in 'utipoend.pas' {ftipoend},
  ulerret in '..\..\atsfinanceiro\comercial\src\ulerret.pas' {flerRet},
  uAcordos in 'uAcordos.pas' {facordos},
  uMov in 'uMov.pas' {fMov},
  uUtils in 'uUtils.pas',
  md5 in 'md5.pas',
  uValCPF in 'uValCPF.pas' {fValCPF},
  uCarneRec in 'uCarneRec.pas' {fCarneRec};

//  uArquivoRetornoSR in 'uArquivoRetornoSR.pas' {fArquivoRetorno2};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TDM, DM);
  //  Application.CreateForm(TfRemessaAvulso, fRemessaAvulso);

  fSplash:= TfSplash.Create(Application);
  fSplash.Show;
  fSplash.Update;
  Application.CreateForm(TfDlgLogin, fDlgLogin);
  Application.CreateForm(TPrincipal, Principal);
  Application.CreateForm(TfPai, fPai);
  Application.CreateForm(TdmApp, dmApp);
  Application.CreateForm(TfTemas, fTemas);
  Application.CreateForm(TfGeraTituloAvulso, fGeraTituloAvulso);
  Application.CreateForm(TfAtualiza_Mensais, fAtualiza_Mensais);
  Application.CreateForm(Tdmconsulta, dmconsulta);
  Application.CreateForm(TfSocio_Procura, fSocio_Procura);
  Application.CreateForm(TfRemessaAcordo, fRemessaAcordo);
  Application.Run;
end.
