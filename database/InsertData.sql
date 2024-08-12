USE [Chatbot];

EXEC [PROC_GET_RESPONSE];
EXEC [PROC_GET_RESPONSE] 'servicio';
EXEC [PROC_GET_RESPONSE] 'HOLA pura vida quiero los horarios porfa';

EXEC PROC_INSERT_RESPONSE 'hola', '¡Hola! ¿Cómo puedo ayudarte?';
EXEC PROC_INSERT_RESPONSE 'pura vida', '¡Pura Vida!';
EXEC PROC_INSERT_RESPONSE 'horario', 'Nuestros horarios son de lunes a viernes, de 9:00 am a 6:00 pm.';
EXEC PROC_INSERT_RESPONSE 'ubicación', 'Estamos ubicados en la calle Principal 123, Ciudad Central.';
EXEC PROC_INSERT_RESPONSE 'contacto', 'Puedes contactarnos al teléfono (+506) 2546 1153 o al correo electrónico contacto@gmail.com.';
EXEC PROC_INSERT_RESPONSE 'servicio', 'Ofrecemos una amplia gama de servicios, incluyendo consultoría, desarrollo de software y soporte técnico.';
EXEC PROC_INSERT_RESPONSE 'producto', 'Tenemos una variedad de productos, desde electrónicos hasta artículos para el hogar. ¿Buscas algo en particular?';
EXEC PROC_INSERT_RESPONSE 'soporte', 'Nuestro equipo de soporte está disponible para ayudarte con cualquier problema técnico. ¿Cómo podemos asistirte hoy?';
EXEC PROC_INSERT_RESPONSE 'reembolso', 'Para solicitar un reembolso, por favor contáctanos al soporte con tu número de orden y motivo del reembolso.';
EXEC PROC_INSERT_RESPONSE 'opinion', 'Valoramos tu opinión. Por favor, déjanos un comentario sobre tu experiencia con nuestro servicio.';
EXEC PROC_INSERT_RESPONSE 'seguimiento', 'Estamos revisando tu solicitud y te contactaremos en breve con una actualización.';
EXEC PROC_INSERT_RESPONSE 'novedad', 'Para estar al tanto de nuestras novedades y ofertas, síguenos en nuestras redes sociales o suscríbete a nuestro boletín.';
EXEC PROC_INSERT_RESPONSE 'adiós', '¡Adiós! Que tengas un buen día.';
EXEC PROC_INSERT_RESPONSE 'gracias', '¡Con mucho gusto! Para servirte.';
