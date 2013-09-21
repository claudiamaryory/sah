class ServicioMailer < ActionMailer::Base
  default from: 'claudiamaryory@misena.edu.co' #coloco el correo de la empresa
  
  def registration_contacto(servicio)
    	@servicio = servicio #creo un  objeto para recuperar la informacion del foormulario
    	@clientecorreo = @servicio.cliente.email 
    	attachments["rails.png"] = File.read("#{Rails.root}/app/assets/images/rails.png") 
    	# para adicionar un archivo adjunto a el email
      mail(:to => @clientecorreo, :subject => "Prueba envio de encuesta satisfaccion  - aplicativo SAH ")
      # este es unn has para definir :to = a quien se envía el email, :subject = asunto del email, :from = el correo desde el cual se enviara el email.
  end
end
