SELECT COUNT(*) FROM images JOIN galleries ON
  images.gallery_id = galleries.id
WHERE images.description ILIKE '%sushi%'
GROUP BY galleries.id;
