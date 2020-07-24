class StaticPagesController < ApplicationController
  def index
    @page_title = "Página inicial"
  end

  def about
    @page_title = "Sobre nós"
  end

  def contact
    @page_title = "Contatos"
  end
end
