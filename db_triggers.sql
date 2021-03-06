CREATE TRIGGER on_insert_into_entities AFTER INSERT ON Entities FOR EACH ROW INSERT INTO Log(id,date,description) values(UUID(),NOW(),CONCAT("new entity ",NEW.id," added in Entities by ",USER()));

CREATE TRIGGER on_insert_into_objects AFTER INSERT ON Objects FOR EACH ROW INSERT INTO Log(id,date,description) values(UUID(),NOW(),CONCAT("new object ",NEW.id," added in Objects by ",USER()));

CREATE TRIGGER on_insert_into_assignments AFTER INSERT ON Assignments FOR EACH ROW INSERT INTO Log(id,date,description) values(UUID(),NOW(),CONCAT("new assignment ",NEW.entity_id," - ",NEW.object_id," added in Assignments by ",USER()));

CREATE TRIGGER on_insert_into_permissions AFTER INSERT ON Permissions FOR EACH ROW INSERT INTO Log(id,date,description) values(UUID(),NOW(),CONCAT("new permission ",NEW.entity_id," : ",NEW.permission," : ",NEW.object_id," added in Permissions by ",USER()));

CREATE TRIGGER on_update_entities AFTER UPDATE ON Entities FOR EACH ROW INSERT INTO Log(id,date,description) values(UUID(),NOW(),CONCAT("entity ",NEW.id," updated in Entities by ",USER()));

CREATE TRIGGER on_update_objects AFTER UPDATE ON Objects FOR EACH ROW INSERT INTO Log(id,date,description) values(UUID(),NOW(),CONCAT("object ",NEW.id," updated in Objects by ",USER()));

CREATE TRIGGER on_update_assignments AFTER UPDATE ON Assignments FOR EACH ROW INSERT INTO Log(id,date,description) values(UUID(),NOW(),CONCAT("assignment ",OLD.entity_id," - ",OLD.object_id," updated to ",OLD.entity_id," - ",OLD.object_id, " in Assignments by ",USER()));

CREATE TRIGGER on_update_permissions AFTER UPDATE ON Permissions FOR EACH ROW INSERT INTO Log(id,date,description) values(UUID(),NOW(),CONCAT("permission ",OLD.entity_id," : ",OLD.permission," : ",OLD.object_id, " updated to ",NEW.entity_id," : ",NEW.permission," : ",NEW.object_id," in Permissions by ",USER()));

CREATE TRIGGER on_delete_from_entities AFTER DELETE ON Entities FOR EACH ROW INSERT INTO Log(id,date,description) values(UUID(),NOW(),CONCAT("entity ",OLD.id," deleted from Entities by ",USER()));

CREATE TRIGGER on_delete_from_objects AFTER DELETE ON Objects FOR EACH ROW INSERT INTO Log(id,date,description) values(UUID(),NOW(),CONCAT("object ",OLD.id," deleted from Objectss by ",USER()));

CREATE TRIGGER on_delete_from_assignments AFTER DELETE ON Assignments FOR EACH ROW INSERT INTO Log(id,date,description) values(UUID(),NOW(),CONCAT("assignment ",OLD.entity_id," - ",OLD.object_id," deleted from Assignments by ",USER()));

CREATE TRIGGER on_delete_from_permissions AFTER DELETE ON Permissions FOR EACH ROW INSERT INTO Log(id,date,description) values(UUID(),NOW(),CONCAT("permission ",OLD.entity_id," : ",OLD.permission," : ",OLD.object_id, " deleted from Permissions by ",USER()));







