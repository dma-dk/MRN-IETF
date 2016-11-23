%%%

    Title = "Maritime Resource Names (MRN)"
    abbrev = "Maritime Resource Names (MRN)"
    category = "info"
    docName = "rfc-xxxx"
    ipr= "trust200902"
    area = "Internet"
    workgroup = "Network Working Group"
    keyword = [""]

    [[author]]
    initials="K.N."
    surname="Nielsen"
    fullname="Kasper Nielsen"
    organization = "Danish Maritime Authority"
      [author.address]
      email = "kasperni@gmail.com"
      phone = "+45 26 73 73 40"
      [author.address.postal]
      street = "Sankt Annae Plads 10A, 4"
      city = "Copenhagen"
      code = "1250"

%%%

{mainmatter}

# Overview and Rational

Avian carriers can provide high delay, low throughput, and low
altitude service.  The connection topology is limited to a single
point-to-point path for each carrier, used with standard carriers,
but many carriers can be used without significant interference with
each other, outside of early spring.  This is because of the 3D ether
space available to the carriers, in contrast to the 1D ether used by
IEEE802.3.  The carriers have an intrinsic collision avoidance
system, which increases availability.  Unlike some network
technologies, such as packet radio, communication is not limited to
line-of-sight distance.  Connection oriented service is available in
some cities, usually based upon a central hub topology.

# Frame Format

The IP datagram is printed, on a small scroll of paper, in
hexadecimal, with each octet separated by whitestuff and blackstuff.
The scroll of paper is wrapped around one leg of the avian carrier.
A band of duct tape is used to secure the datagram's edges.  The
bandwidth is limited to the leg length.  The MTU is variable, and
paradoxically, generally increases with increased carrier age.  A
typical MTU is 256 milligrams.  Some datagram padding may be needed.

Upon receipt, the duct tape is removed and the paper copy of the
datagram is optically scanned into a electronically transmittable
form.

# Discussion

Multiple types of service can be provided with a prioritized pecking
order.  An additional property is built-in worm detection and
eradication.  Because IP only guarantees best effort delivery, loss
of a carrier can be tolerated.  With time, the carriers are self-
regenerating.  While broadcasting is not specified, storms can cause
data loss.  There is persistent delivery retry, until the carrier
drops.  Audit trails are automatically generated, and can often be
found on logs and cable trays.

# Security Considerations

The MRN URN Namespace ID shares the security considerations outlined
in [RFC3406], but has no other known security considerations.

{backmatter}
