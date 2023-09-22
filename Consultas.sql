/* Obtener todos los paquetes que están en tránsito: */

SELECT * FROM `proyecto2023`.`paquetes` WHERE estado = 'En tránsito';

/* Listar todos los camioneros y la capacidad de su camión */

SELECT u.nombre, u.apellido, c.capacidadLt FROM `proyecto2023`.`usuarios` u
JOIN `proyecto2023`.`camion` c ON u.idUser = c.chofer WHERE u.roles = 'Camionero';

/* Obtener las sesiones de login creadas en agosto de 2023: */

SELECT * FROM `proyecto2023`.`loginSessions` WHERE MONTH(created_at) = 8 AND YEAR(created_at) = 2023;

/* Obtener la dirección completa (dirección, calle y puerta) de todos los depósitos propios:
 */

SELECT direccion, calle, puerta FROM `proyecto2023`.`depositos` WHERE flagDepPropio = 1;

/* Mostrar la descripción de los lotes que serán enviados al barrio Pocitos:
*/

SELECT descLote FROM `proyecto2023`.`lotes` WHERE barrioDestino = 'Pocitos';
