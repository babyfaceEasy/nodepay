alter table property_photos add column serial int(11) not null default 0;
alter table reviews change reviwer reviewer enum('host','guest');
alter table reviews add column secret_feedback text null;
alter table reviews add column comments text null;
alter table reviews add column improve_message text null;
