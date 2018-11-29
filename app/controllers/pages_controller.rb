class PagesController < ApplicationController


  def home
    @apresentacao_um = ApresentacaoUm.find(1)
    @apresentacao_dois = ApresentacaoDoi.find(1)
    @sobre = Sobre.find(1)

    @palestras = Palestra.all
    @palestras_dia6 = @palestras.order("hora_palestra")

    @oficinas = Oficina.all
    @oficinas_dia7 = @oficinas.order("inicio")

    @atividades = Atividade.all
    @atividade_dia5 = @atividades.where(dia_atividade: "2018-12-05").order("hora_atividade")
    @atividade_dia6 = @atividades.where(dia_atividade: "2018-12-06").order("hora_atividade")
    @atividade_dia7 = @atividades.where(dia_atividade: "2018-12-07").order("hora_atividade")

    @user = User.new
  end

end
