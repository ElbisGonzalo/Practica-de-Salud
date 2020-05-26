mysql -uroot -p

create database bd_salud character set utf8 collate utf8_general_ci;

use bd_salud;

CREATE TABLE `post` (
`id` int(11) NOT NULL,
`autor` varchar(30) DEFAULT NULL,
`fecha` varchar(30) DEFAULT NULL,
`titulo` varchar(200) DEFAULT NULL,
`contenido` varchar(900) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `post` (`id`, `autor`, `fecha`, `titulo`, `contenido`) VALUES
(2, 'Administrador', '24/05/2020', 'Como adelgazar mejorando tu sistema digestivo', 'Revisar nuestros habitos alimentarios, masticar despacio y consumir fibra en nuestra dieta evitando los productos ultraprocesados y el exceso de azucar son pilares fundamentales para una buena digestiÃ³n para siempre.'),
(3, 'Administrador', '23/05/2020', 'Modelo computacional que puso al mundo en cuarentena', 'AutoediciÃ³n y editores de pagina web usan el Lorem Ipsum como su texto por su defecto, y al hacer una bÃºsqueda de "Lorem Ipsum" va a dar por resultado muchos sitio web que usan ese texto si se encuentran en el desarrollo del estado.');

CREATE TABLE `usuarios` (
`id` int(11) NOT NULL,
`usuario` varchar(100) DEFAULT NULL,
`password` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `usuarios` (`id`, `usuario`, `password`) VALUES (1, 'Administrador', '123456');


ALTER TABLE `post`
ADD PRIMARY KEY (`id`);

ALTER TABLE `usuarios`
ADD PRIMARY KEY (`id`);

ALTER TABLE `post`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;


ALTER TABLE `usuarios`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

COMMIT;

