create table profile(
   profileId binary(16) not null,
   profileEmail varchar(128) not null,
   unique(profileEmail),

)