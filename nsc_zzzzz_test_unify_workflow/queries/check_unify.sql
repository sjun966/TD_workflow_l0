SELECT 
        id
      , id_key_type
      , cnt_canonical_ids
FROM  (
  SELECT 
          id
        , id_key_type
        , count(canonical_id) as cnt_canonical_ids
  FROM  cdp_unification_${canonical_db_name}.${canonical_id_name}_lookup
  GROUP BY    id
            , id_key_type
  )
WHERE cnt_canonical_ids > 1