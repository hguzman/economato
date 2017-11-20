class ConsolidadoMailer < ApplicationMailer

  def enviar_pedido(user, consolidado)
    @user=user
    @consolidado=consolidado
    mail(to: "hguzman@carsok.co", subject: "Correo proveedor")
  end

end
