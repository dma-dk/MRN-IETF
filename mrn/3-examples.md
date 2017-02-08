# Examples
All the examples provided in the following section are hypothetical examples. Real world naming schemes for a specific type of a maritime resource will most likely look different.

A vessel with an IMO number of 9743368 could be identified as follows:

> urn:mrn:imo:imo-number:9743368

The governing organization of how to assign IMO numbers is the International Maritime Organization (IMO). IMO may have delegated the actual assignment of numbers to another organization. But IMO is still the organization who has determined that an IMO number is an unique seven-digit number. Hence the governing-organization of the imo-number identifier will be imo. The type imo-number is a reference to the type of identifier. 
This name is something the governing organization decides upon internally. 
In this example we have used imo-number but it could just as well have been imo:imonumber or just imo:number. Finally, what follows after the governing organization and the type part is the type specific part which in this case is 9743368. The type specific part is (as the name implies) specific to the combination of governing organization and type. In this case the type specific part is always a 7 digit IMO number.

Another way to identify the vessel might be to use its MMSI number. Here the identifier might look like this:

> urn:mrn:itu:mmsi:538070999

In this case ITU is the governing body because MMSI numbers are based on recommendation M.585 from ITU. It might be that national bodies does the actual assignment of MMSI numbers, but ITU is the governing body for the standardization of MMSI numbers.

As can be seen from this two examples. The same vessel can be identified by multiple different identifiers. This is no different to a person who might be identified both by this driver license number or his social security id. Multiple identities can identify the same entity. But some parameters frequently used for identification, such as ‘names’, may not qualify as identifiers, as they are not guaranteed to be unique. A single identifier must refer to one and only one identity.

The concept of URNs can be taken from a very coarse grained level to a very fine grained level. For example, a container ship might be identified by one of the two previous URL’s. The containers aboard the ship might be identified with an URN adapting the ISO 6346 identifier scheme for container ids.

> urn:mrn:bic:container-id:CSQU3054383 

Finally, individual items in a single container might be identified by another URN scheme. It might even be possible to integrate with URNs defined outside of the urn:mrn namespace. For example, all items in a container might use the EPC scheme that was described in the previous section of example URNs. In other words, the usage of URNs as identifiers are not limited to those defined within this document. In the future other non-maritime sectors might even adopt a similar scheme based on URNs in order to facilitate easier integration across sector boundaries.

An identifier does not need to be a physical object. It can also be something like an electronic document.  For example, IMO might decide that all of their documents would use a "urn:mrn:imo:publications" prefix. So
urn:mrn:imo:publications:IF110S
would refer to the publication "IMO SOLAS Consolidated Spanish Edition, 2014 IF110S"

On the other hand an organization such as IALA might decide that all of their publications would follow another format where the category of the publication is included in the identifier.
For example, a recommendation could be
urn:mrn:iala:publications:recommendation:e-nav-140
while the identifier of a guideline might be written such as
urn:mrn:iala:publications:guideline:synchronisation-of-lights-1069

As can be seen from the previous example the type specific part can be split into multiple hierarchies. It is all up to the governing organization how they want to structure their identifiers.

Another example of identifiers with multiple hierarchies could be an identifier scheme for lights and buoys. Here IALA could choose to let the type specific part consist of \<CountryCode\>:\<National Identifier\>. For example
urn:mrn:iala:aton:us:1234X5

There are no requirements that the governing organizations are permanent entities. For example, the European Mona Lisa project might choose to use “monalisaproject” as the governing organization. So, for example, a route id in this project might look like
urn:mrn:monalisaproject:route-id:XCUS231230
Internally in the project they would just use XCUS231230 to refer to a route. But when working with external systems or other projects the full name of the route would be used “urn:mrn:monalisaproject:route-id:XCUS231230”. In case other projects used another type of identifier for a particular route.

As can be seen from all these examples. The scheme is highly adaptable. Each organization can choose their own layout for a specific type of identifiers. It is easy to fit existing identifiers into the naming scheme. And it provides good context information about the type of the identifier in comparison to something simple like a random UUID.
