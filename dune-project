(lang dune 2.0)
(name ca-certs)

(generate_opam_files true)
(source (github mirage/ca-certs))
(documentation "https://mirage.github.io/ca-certs/doc")
(license ISC)
(maintainers "Etienne Millon <me@emillon.org>")
(authors "Etienne Millon <me@emillon.org>, Hannes Mehnert <hannes@mehnert.org>")

(package
 (name ca-certs)
 (depends
  astring bos fpath ptime logs mirage-crypto
  (x509 (>= 0.13.0))
  (ocaml (>= 4.08.0))
  (alcotest :with-test)
  (fmt (and :with-test (>= 0.8.7))))
 (conflicts (result (< 1.5)))
 (synopsis "Detect root CA certificates from the operating system")
 (description
   "\> TLS requires a set of root anchors (Certificate Authorities) to
   "\> authenticate servers. This library exposes this list so that it can be
   "\> registered with ocaml-tls.
 )
 ; tags are not included before (lang dune 2.0)
 ; so an opam template is necessary until then
 (tags (org:mirage)))
