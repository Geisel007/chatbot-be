USE [Chatbot];

EXEC [PROC_GET_RESPONSE];
EXEC [PROC_GET_RESPONSE] 'servicio';
EXEC [PROC_GET_RESPONSE] 'HOLA pura vida quiero los horarios porfa';

EXEC PROC_INSERT_RESPONSE 'hola', '�Hola! �C�mo puedo ayudarte?';
EXEC PROC_INSERT_RESPONSE 'pura vida', '�Pura Vida!';
EXEC PROC_INSERT_RESPONSE 'horario', 'Nuestros horarios son de lunes a viernes, de 9:00 am a 6:00 pm.';
EXEC PROC_INSERT_RESPONSE 'ubicaci�n', 'Estamos ubicados en la calle Principal 123, Ciudad Central.';
EXEC PROC_INSERT_RESPONSE 'contacto', 'Puedes contactarnos al tel�fono (+506) 2546 1153 o al correo electr�nico contacto@gmail.com.';
EXEC PROC_INSERT_RESPONSE 'servicio', 'Ofrecemos una amplia gama de servicios, incluyendo consultor�a, desarrollo de software y soporte t�cnico.';
EXEC PROC_INSERT_RESPONSE 'producto', 'Tenemos una variedad de productos, desde electr�nicos hasta art�culos para el hogar. �Buscas algo en particular?';
EXEC PROC_INSERT_RESPONSE 'soporte', 'Nuestro equipo de soporte est� disponible para ayudarte con cualquier problema t�cnico. �C�mo podemos asistirte hoy?';
EXEC PROC_INSERT_RESPONSE 'reembolso', 'Para solicitar un reembolso, por favor cont�ctanos al soporte con tu n�mero de orden y motivo del reembolso.';
EXEC PROC_INSERT_RESPONSE 'opinion', 'Valoramos tu opini�n. Por favor, d�janos un comentario sobre tu experiencia con nuestro servicio.';
EXEC PROC_INSERT_RESPONSE 'seguimiento', 'Estamos revisando tu solicitud y te contactaremos en breve con una actualizaci�n.';
EXEC PROC_INSERT_RESPONSE 'novedad', 'Para estar al tanto de nuestras novedades y ofertas, s�guenos en nuestras redes sociales o suscr�bete a nuestro bolet�n.';
EXEC PROC_INSERT_RESPONSE 'adi�s', '�Adi�s! Que tengas un buen d�a.';
EXEC PROC_INSERT_RESPONSE 'gracias', '�Con mucho gusto! Para servirte.';
