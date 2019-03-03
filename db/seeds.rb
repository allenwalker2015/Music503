# Dashboard Settings General Site

from_json = -> (value) {
  return JSON.parse(value).with_indifferent_access rescue {}
}

site = CamaleonCms::TermTaxonomy.first_or_initialize(taxonomy: 'site')
site.update_attributes(
  name: 'Alex5stars',
  slug: 'localhost:3000',
  description: 'eeeeejol'
)
site.save

# Site Default Configuration

site_config = CamaleonCms::Meta.first_or_initialize(objectid: 1, object_class: 'Site', key: '_default')
attrs = from_json(site_config.value).merge(

)
site_config.update_attributes(attrs)
site_config.save