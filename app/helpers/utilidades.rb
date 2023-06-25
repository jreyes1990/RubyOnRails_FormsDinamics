module Utilidades
  public
  def format_estado(parametro)
    if parametro == 'A'
      badge_estado = "badge badge-success"
      nombre_estado = "Activo"
    else
      badge_estado = "badge badge-danger"
      nombre_estado = "Inactivo"
    end

    return "<div class='text-center'><span class='#{badge_estado}'>#{nombre_estado}</span></div>".html_safe
  end

  def format_estilo_codigo(parametro)
    return "<div class='text-center'><strong><span class='badge badge-pill badge-white' style='background: #{parametro}; color: #{parametro};'>#{parametro}</span></strong></div>".html_safe
  end

  def icono_awesome(parametro)
    return "<div class='text-center'><i class='#{parametro}' aria-hidden='true'></i></div>".html_safe
  end

  def concatena_datos(valor1, valor2)
    return "#{valor1} - #{valor2}"
  end

  def format_digitos(correlativo, valor_digito)
    if !correlativo.nil?
      respuesta = correlativo.to_s.rjust(valor_digito,"0")
    end

    return respuesta
  end

  def custom_query(sql)
    results = ActiveRecord::Base.connection.exec_query(sql)
  
    if results.present?
      return results
    else
      return nil
    end
  end

  def fecha_actual
    t = Time.now
    fecha = t.strftime("%d/%m/%Y")
    return fecha
  end 

  def fecha_actual_ot
    t = Time.now
    fecha = t.strftime("%Y-%m-%d")
    return fecha
  end

  def fecha_hora_actual
    t = Time.now
    fecha = t.strftime("%d/%m/%Y %H:%M:%S")
    return fecha
  end 

  def hora_actual
    t = Time.now
    hora = t.strftime("%H:%M")
    return hora
  end 
  
  def ano_actual
    t = Time.now
    fecha = t.strftime("%Y")
    return fecha
  end 
end