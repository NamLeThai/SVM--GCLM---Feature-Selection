org_feature_com = csvread("test_case.csv");

feature_com = org_feature_com(:,2:end);

load("experiment_data");

result = [org_feature_com, ones(size(feature_com, 1),1)];

for index = 1:size(feature_com,1)
	test_case = [1, feature_com(index,:) + 1];
	cross_validation_10_folder;
end