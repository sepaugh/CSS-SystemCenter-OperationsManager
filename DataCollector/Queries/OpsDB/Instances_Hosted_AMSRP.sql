SELECT TargetObjectDisplayName, TargetObjectFullName
FROM RelationshipGenericView
WHERE SourceObjectDisplayName = 'All Management Servers Resource Pool'
ORDER BY TargetObjectFullName,TargetObjectDisplayName