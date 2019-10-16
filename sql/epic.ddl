create table profile(
	profileId binary(16) not null,
	profileEmail varchar(128) not null,
	unique(profileEmail),
	primary key(profileId)
);

create table episode(
	episodeId binary(16) not null,
	episodeDateTime datetime(6) not null,
	episodeSummary varchar(250) not null,
	episodeTitle varchar(50) not null,
	episodeUrl varchar(100) not null,
	episodeYear year(4) not null,
	unique(episodeSummary),
	unique(episodeTitle),
	unique(episodeUrl),
	primary key(episodeId)
);

create table recommend(
	recommendEpisodeId binary(16) not null,
	recommendProfileId binary(16) not null,
	recommendDate datetime(6) not null,
	index(recommendEpisodeId),
	index(recommendProfileId),
	foreign key(recommendEpisodeId) references episode(episodeId),
	foreign key(recommendProfileId) references profile(profileId),
	primary key(recommendEpisodeId, recommendProfileId)
);