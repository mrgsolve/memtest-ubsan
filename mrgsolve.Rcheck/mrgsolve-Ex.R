pkgname <- "mrgsolve"
source(file.path(R.home("share"), "R", "examples-header.R"))
options(warn = 1)
base::assign(".ExTimings", "mrgsolve-Ex.timings", pos = 'CheckExEnv')
base::cat("name\tuser\tsystem\telapsed\n", file=base::get(".ExTimings", pos = 'CheckExEnv'))
base::assign(".format_ptime",
function(x) {
  if(!is.na(x[4L])) x[1L] <- x[1L] + x[4L]
  if(!is.na(x[5L])) x[2L] <- x[2L] + x[5L]
  options(OutDec = '.')
  format(x[1L:3L], digits = 7L)
},
pos = 'CheckExEnv')

### * </HEADER>
library('mrgsolve')

base::assign(".oldSearch", base::search(), pos = 'CheckExEnv')
cleanEx()
nameEx("Req")
### * Req

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
### Name: Req
### Title: Request simulated output.
### Aliases: Req Req,mrgmod-method req req,mrgmod-method

### ** Examples

mod <- mrgsolve:::house()

mod %>% Req(CP,RESP) %>% ev(amt=1000) %>%  mrgsim




base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("Req", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
cleanEx()
nameEx("as_bmat")
### * as_bmat

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
### Name: as_bmat
### Title: Coerce R objects to block or diagonal matrices.
### Aliases: as_bmat as_bmat,list-method as_bmat,numeric-method
###   as_bmat,data.frame-method as_bmat,ANY-method as_dmat
###   as_dmat,list-method as_dmat,ANY-method as_dmat,numeric-method
###   as_dmat,data.frame-method

### ** Examples


df <- data.frame(OMEGA1.1 = c(1,2),
                 OMEGA2.1 = c(11,22),
                 OMEGA2.2 = c(3,4),
                 SIGMA1.1 = 1,
                 FOO=-1)

as_bmat(df, "OMEGA")
as_dmat(df,"SIGMA")
as_dmat(df[1,],"OMEGA")




base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("as_bmat", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
cleanEx()
nameEx("as_data_set")
### * as_data_set

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
### Name: as_data_set
### Title: Create a simulatinon data set from ev objects.
### Aliases: as_data_set as_data_set,ev-method

### ** Examples


as_data_set(ev(amt=c(100,200), cmt=1, ID=1:3),
            ev(amt=300, time=24, ID=1:2),
            ev(amt=1000, ii=8, addl=10, ID=1:3))

# Instead of this, use expand.ev
as_data_set(ev(amt=100), ev(amt=200),ev(amt=300))




base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("as_data_set", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
cleanEx()
nameEx("as_deslist")
### * as_deslist

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
### Name: as_deslist
### Title: Create a list of designs from a data frame.
### Aliases: as_deslist

### ** Examples

idata <- dplyr::data_frame(ID=1:4, end=seq(24,96,24), delta=6,
add=list(c(122,124,135),c(111), c(99),c(88)))

idata <- dplyr::mutate(idata, GRP = ID %%2)

idata

l <- as_deslist(idata,"GRP")

l

lapply(l,stime)

lapply(as_deslist(idata, "ID"),stime)




base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("as_deslist", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
cleanEx()
nameEx("assign_ev")
### * assign_ev

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
### Name: assign_ev
### Title: Replicate a list of events into a data set.
### Aliases: assign_ev

### ** Examples

ev1 <- ev(amt=100)
ev2 <- ev(amt=300, rate=100, ii=12, addl=10)

idata <- data.frame(ID=1:10) 
idata$arm <- 1+(idata$ID %%2)

assign_ev(list(ev1,ev2),idata,"arm",join=TRUE)




base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("assign_ev", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
cleanEx()
nameEx("blocks")
### * blocks

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
### Name: blocks
### Title: Return the code blocks from a model specification file.
### Aliases: blocks blocks,mrgmod-method blocks,character-method

### ** Examples

mod <- mrgsolve:::house()
mod %>% blocks
mod %>% blocks(PARAM,TABLE)




base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("blocks", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
cleanEx()
nameEx("bmat")
### * bmat

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
### Name: bmat
### Title: Create matrices from vector input.
### Aliases: bmat cmat dmat

### ** Examples


dmat(1,2,3)/10

bmat(0.5,0.01,0.2)

cmat(0.5, 0.87,0.2)




base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("bmat", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
cleanEx()
nameEx("chain")
### * chain

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
### Name: chain
### Title: Functions for chaining commands together.
### Aliases: chain

### ** Examples


mod <- mrgsolve:::house()

data(exidata)
data(exTheoph)

out <- mod %>% data_set(exTheoph) %>% mrgsim()
out <- mod %>% carry_out(evid) %>% ev(amt=100, cmt=1) %>% mrgsim()
out <- mod %>% Req(CP,RESP) %>% mrgsim()



base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("chain", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
cleanEx()
nameEx("cmtn")
### * cmtn

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
### Name: cmtn
### Title: Get the compartment number from a compartment name.
### Aliases: cmtn cmtn,mrgmod-method

### ** Examples

mod <- mrgsolve:::house()
mod %>% cmtn("CENT")



base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("cmtn", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
cleanEx()
nameEx("cvec")
### * cvec

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
### Name: cvec
### Title: Create create character vectors.
### Aliases: cvec cvec,character-method ch s

### ** Examples


cvec("A,B,C")
ch(A,B,C)
s(A,B,C)




base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("cvec", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
cleanEx()
nameEx("data_set")
### * data_set

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
### Name: data_set
### Title: Select and modify a data set for simulation.
### Aliases: data_set data_set,mrgmod,data.frame-method
###   data_set,mrgmod,ANY-method data_set,mrgmod,missing-method

### ** Examples


mod <- mrgsolve:::house()

data <- expand.ev(ID=1:3, amt=c(10,20))

mod %>% data_set(data, ID > 1) %>% mrgsim

data(extran1)
head(extran1)

mod %>% data_set(extran1) %>% mrgsim
mod %>% mrgsim(data=extran1)




base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("data_set", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
cleanEx()
nameEx("design")
### * design

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
### Name: design
### Title: Set observation designs for the simulation.
### Aliases: design

### ** Examples


peak <- tgrid(0,6,0.1)
sparse <- tgrid(0,24,6)

des1 <- c(peak,sparse)
des2 <- tgrid(0,72,4)


data <- expand.ev(ID = 1:10, amt=c(100,300))
data$GRP <- data$amt/100

idata <- data[,c("ID", "amt")]

mod <- mrgsolve:::house()

mod %>%
  omat(dmat(1,1,1,1)) %>%
  carry_out(GRP) %>%
  idata_set(idata) %>%
  design(list(des1, des2),"amt") %>%
  data_set(data) %>%
  mrgsim %>% 
  plot(RESP~time|GRP)



base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("design", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
cleanEx()
nameEx("ev_days")
### * ev_days

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
### Name: ev_days
### Title: Schedule dosing events on days of the week.
### Aliases: ev_days

### ** Examples


# Monday, Wednesday, Friday x 4 weeks
ev_days(ev(amt=100), days="m,w,f", addl=3)

# 50 mg Tuesdays, 100 mg Thursdays x 6 months
ev_days(t=ev(amt=50), th=ev(amt=100), addl=23)





base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("ev_days", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
cleanEx()
nameEx("events")
### * events

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
### Name: events
### Title: Event objects for simulating PK and other interventions.
### Aliases: events ev as.ev events,mrgmod-method ev,mrgmod-method
###   ev,missing-method ev,ev-method as.ev,data.frame-method
###   as.matrix,ev-method as.data.frame,ev-method show,ev-method
###   events,mrgsims-method

### ** Examples

mod <- mrgsolve:::house()
mod <- mod %>% ev(amt=1000, time=0, cmt=1)
events(mod)

loading <- ev(time=0, cmt=1, amt=1000)
maint <- ev(time=12, cmt=1, amt=500, ii=12, addl=10)
loading + maint


ev(ID=1:10, cmt=1, time=0, amt=100)





base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("events", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
cleanEx()
nameEx("exdatasets")
### * exdatasets

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
### Name: exdatasets
### Title: Example input data sets.
### Aliases: exdatasets exidata extran1 extran2 extran3 exTheoph exBoot
### Keywords: datasets

### ** Examples


mod <- mrgsolve:::house() %>% update(end=240) %>% Req(CP)

## Full data set
data(exTheoph)
out <- mod %>% data_set(exTheoph) %>% mrgsim
out
plot(out)

## Condensed: mrgsolve fills in the observations
data(extran1)
out <- mod %>% data_set(extran1) %>% mrgsim
out
plot(out)

## Add a parameter to the data set
stopifnot(require(dplyr))
data <- extran1 %>% distinct(ID) %>% select(ID) %>%
  mutate(CL=exp(log(1.5) + rnorm(nrow(.), 0,sqrt(0.1)))) %>%
  left_join(extran1,.)
  
data

out <- mod %>% data_set(data) %>% carry.out(CL) %>%  mrgsim
out
plot(out)

## idata
data(exidata)
out <- mod %>% idata_set(exidata) %>% ev(amt=100,ii=24,addl=10) %>% mrgsim
plot(out, CP~time|ID)



base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("exdatasets", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
cleanEx()
nameEx("expand.idata")
### * expand.idata

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
### Name: expand.idata
### Title: Create template data sets for simulation.
### Aliases: expand.idata expand.ev

### ** Examples

idata <- expand.idata(CL=c(1,2,3), VC=c(10,20,30))

doses <- expand.ev(amt=c(300,100), ii=c(12,24), cmt=1)



base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("expand.idata", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
cleanEx()
nameEx("house")
### * house

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
### Name: house
### Title: Return a pre-compiled, PK/PD model.
### Aliases: house

### ** Examples


mod <- mrgsolve:::house()

see(mod)

mod %>% ev(amt=100) %>% mrgsim %>% plot




base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("house", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
cleanEx()
nameEx("idata_set")
### * idata_set

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
### Name: idata_set
### Title: Select and modify a idata set for simulation.
### Aliases: idata_set idata_set,mrgmod,data.frame-method
###   idata_set,mrgmod,ANY-method idata_set,mrgmod,missing-method

### ** Examples


mod <- mrgsolve:::house()

data(exidata)

exidata

mod %>% idata_set(exidata, ID <= 2) %>% mrgsim %>% plot

mod %>% idata_set(exidata) %>% mrgsim

mod %>% mrgsim(idata=exidata) 




base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("idata_set", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
cleanEx()
nameEx("init")
### * init

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
### Name: init
### Title: Methods for working with the model compartment list.
### Aliases: init init,mrgmod-method init,mrgsims-method
###   init,missing-method init,list-method init,ANY-method as.init
###   as.init,list-method as.init,numeric-method as.init,cmt_list-method
###   as.init,missing-method as.init,NULL-method show,cmt_list-method

### ** Examples

## example("init")
mod <- mrgsolve:::house()

init(mod)
init(mod, .pat="^C") ## may be useful for large models

class(init(mod))

init(mod)$CENT

as.list(init(mod))
as.data.frame(init(mod))



base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("init", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
cleanEx()
nameEx("knobs")
### * knobs

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
### Name: knobs
### Title: Run sensitivity analysis on model settings.
### Aliases: knobs knobs,mrgmod,missing-method
###   knobs,mrgmod,batch_mrgsims-method as.data.frame,batch_mrgsims-method
###   knobs,batch_mrgsims,ANY-method show,batch_mrgsims-method

### ** Examples

## example("knobs")

mod <- mrgsolve:::house(end=72)

events <- ev(amt=1000, cmt=1, addl=3, ii=12)

out <- mod %>% ev(events) %>% knobs(CL=c(1,2,3))
plot(out)

out

out <- mod %>% ev(events) %>% knobs(CL=c(1,2,3), VC=c(5,20,50))
plot(out)
plot(out,CP~.)
plot(out, CP~time|VC, groups=CL, lty=2)

out <- knobs(mod, amt=c(100,300,500), cmt=1)
plot(out)

out <- mod %>% knobs(amt=c(100,300), CL=c(1,3), VC=c(5,20), cmt=1)
plot(out)
plot(out, CP~.)

out <- knobs(mod, CL=c(1,2,3))
out

out <- knobs(mod, CL=c(1,2,3))
out



base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("knobs", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
cleanEx()
nameEx("mcode")
### * mcode

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
### Name: mcode_cache
### Title: Write, compile, and load model code.
### Aliases: mcode_cache mcode

### ** Examples


## Not run: 
##D  
##D code <- '
##D $CMT DEPOT CENT
##D $PKMODEL ncmt=1, depot=TRUE
##D $MAIN
##D double CL = 1;
##D double V = 20;
##D double KA = 1;
##D '
##D 
##D mod <- mcode("example",code)
## End(Not run)



base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("mcode", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
cleanEx()
nameEx("modMATRIX")
### * modMATRIX

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
### Name: modMATRIX
### Title: Create a matrix.
### Aliases: modMATRIX

### ** Examples

modMATRIX("1 2.2 333")
modMATRIX("1 1.1 2.2", block=TRUE)
modMATRIX("23 234 234 5234", use=FALSE)

ans <- modMATRIX("1.1 0.657 2.2", correlation=TRUE, block=TRUE)
ans
cov2cor(ans)




base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("modMATRIX", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
cleanEx()
nameEx("modlib")
### * modlib

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
### Name: modlib
### Title: Internal model library.
### Aliases: modlib

### ** Examples

## Not run: 
##D mod <- mread("pk1cmt", modlib())
##D mod <- mread("pk2cmt", modlib()) 
##D mod <- mread("pk3cmt", modlib()) 
##D mod <- mread("irm1",   modlib()) 
##D mod <- mread("irm2",   modlib()) 
##D mod <- mread("irm3",   modlib()) 
##D mod <- mread("irm4",   modlib())
##D mod <- mread("emax",   modlib())
##D mod <- mread("effect", modlib())
##D mod <- mread("tmdd",   modlib())
##D mod <- mread("viral1", modlib())
##D mod <- mread("viral2", modlib())
##D 
##D mrgsolve:::code(mod)
## End(Not run)




base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("modlib", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
cleanEx()
nameEx("mread")
### * mread

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
### Name: mread_cache
### Title: Read a model specification file.
### Aliases: mread_cache mread

### ** Examples


## Not run: 
##D code <- '
##D $PARAM CL = 1, VC = 5
##D $CMT CENT
##D $ODE dxdt_CENT = -(CL/VC)*CENT;
##D '
##D 
##D mod <- mcode("ex_mread",code)
##D 
##D mod
##D 
##D mod %>% init(CENT=1000) %>% mrgsim %>% plot
##D 
##D 
##D mod <- mread("irm3", modlib())
##D 
##D mod
## End(Not run)



base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("mread", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
cleanEx()
nameEx("mrgsim")
### * mrgsim

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
### Name: mrgsim
### Title: Simulate from a model object.
### Aliases: mrgsim

### ** Examples

## example("mrgsim")

mod <- mrgsolve:::house() %>%  ev(amt=1000, cmt=1)
out <- mod %>% mrgsim()
plot(out)

out <- mod %>% mrgsim(end=22)
out


data(exTheoph)

out <- mod %>% data_set(exTheoph) %>% mrgsim()
out

out <- mod %>% mrgsim(data=exTheoph)

out <- mrgsim(mod, data=exTheoph, obsonly=TRUE)
out

out <- mod %>% mrgsim(data=exTheoph, obsaug=TRUE, carry.out="a.u.g")
out

out <- mod %>% mrgsim(req="CENT")
out

out <- mrgsim(mod, Req="CP,RESP")
out






base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("mrgsim", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
cleanEx()
nameEx("mrgsims")
### * mrgsims

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
### Name: mrgsims
### Title: Methods for working with 'mrgsims' objects.
### Aliases: mrgsims $,mrgsims-method tail,mrgsims-method
###   head,mrgsims-method dim,mrgsims-method names,mrgsims-method
###   as.data.frame,mrgsims-method as.matrix,mrgsims-method
###   subset,mrgsims-method summary,mrgsims-method show,mrgsims-method

### ** Examples


## example("mrgsims")

mod <- mrgsolve:::house() %>% init(GUT=100)

out <- mrgsim(mod)
class(out)

out
head(out)
tail(out)

mrgsolve:::mod(out)

dim(out)
names(out)

mat <- as.matrix(out)
df <- as.data.frame(out)

df <- subset(out, time < 12) ## a data frame
out$CP

plot(out)
plot(out, CP~.)
plot(out, CP+RESP~time, scales="same", xlab="Time", main="Model sims")




base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("mrgsims", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
cleanEx()
nameEx("mrgsolve_package")
### * mrgsolve_package

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
### Name: mrgsolve
### Title: mrgsolve
### Aliases: mrgsolve mrgsolve-package

### ** Examples


## example("mrgsolve")

mod <- mrgsolve:::house(delta=0.1)  %>% param(CL=0.5)

events <-  ev(amt=1000, cmt=1, addl=5, ii=24)

events

mod

see(mod)

stime(mod)

param(mod)
init(mod)

out <- mod %>% ev(events) %>% mrgsim(end=168)

out

head(out)
tail(out)
dim(out)

plot(out, GUT+CP~.)

sims <- as.data.frame(out)

t72 <- subset(sims, time==72)
str(t72)

idata <- data.frame(ID=c(1,2,3), CL=c(0.5,1,2),VC=12)
out <- mod %>% ev(events) %>% mrgsim(end=168, idata=idata, req="")
plot(out)

out <- mod %>% ev(events) %>% mrgsim(carry.out="amt,evid,cmt,CL")
head(out)

out <- 
  mod %>% 
  ev() %>% 
  knobs(CL=c(0.5, 1,2), amt=c(100,300,1000), cmt=1,end=48)

plot(out, CP~., scales="same")
plot(out, RESP+CP~time|amt,groups=CL)


ev1 <- ev(amt=500, cmt=2,rate=10)
ev2 <- ev(amt=100, cmt=1, time=54, ii=8, addl=10)
events <- ev1+ev2
events

out <- mod %>% ev(ev1+ev2) %>% mrgsim(end=180, req="")
plot(out)



## "Condensed" data set
data(extran1)
extran1

out <- mod %>% data_set(extran1) %>% mrgsim(end=200)

plot(out,CP~time|factor(ID))


## idata
data(exidata)
exidata

out <- 
  mod %>% 
  ev(amt=1000, cmt=1) %>% 
  idata_set(exidata) %>%  
  mrgsim(end=72)

plot(out, CP~., as="log10")


# Internal model library

mod <- mread("irm1", modlib())

mod

mod %>% ev(amt=300, ii=12, addl=3) %>% mrgsim





base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("mrgsolve_package", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
cleanEx()
nameEx("omega")
### * omega

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
### Name: omega
### Title: Manipulate OMEGA matrices.
### Aliases: omega omat OMEGA omat,missing-method omat,matrix-method
###   omat,NULL-method omat,list-method omat,omegalist-method
###   omat,mrgmod-method omat,mrgsims-method

### ** Examples

## example("omega")
mat1 <- matrix(1)
mat2 <- diag(c(1,2,3))
mat3 <- matrix(c(0.1, 0.002, 0.002, 0.5), 2,2)
mat4 <- dmat(0.1, 0.2, 0.3, 0.4)

omat(mat1)
omat(mat1, mat2, mat3)
omat(A=mat1, B=mat2, C=mat3)

mod <- mrgsolve:::house() %>% omat(mat4)

omat(mod)
omat(mod, make=TRUE)


## Not run: 
##D 
##D $OMEGA
##D 1 2 3
##D 
##D $OMEGA @block
##D 1 0.1 2
##D 
##D $OMEGA \@cor
##D \@ prefix ETA_
##D \@ labels CL VC KA
##D 0.1
##D 0.67 0.2
##D 0 0 0.3
##D 
## End(Not run)



base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("omega", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
cleanEx()
nameEx("param")
### * param

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
### Name: $,mrgmod-method
### Title: Create and work with parameter objects.
### Aliases: $,mrgmod-method param param,mrgmod-method param,mrgsims-method
###   param,missing-method param,list-method param,ANY-method as.param
###   as.param,list-method as.param,numeric-method
###   as.param,parameter_list-method as.param,missing-method
###   show,parameter_list-method allparam
### Keywords: param

### ** Examples

## example("param")
mod <- mrgsolve:::house()

param(mod)
param(mod, .pat="^(C|F)") ## may be useful when large number of parameters

class(param(mod))

param(mod)$KA

as.list(param(mod))
as.data.frame(param(mod))




base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("param", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
cleanEx()
nameEx("pk_model")
### * pk_model

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
### Name: pkmodel
### Title: Simulate from 1- or 2-compartment PK model.
### Aliases: pkmodel

### ** Examples


## Not run: 
##D mod <- pkmodel(1)
##D 
##D mod %>% ev(amt=1000, ii=24, addl=3) %>% mrgsim(end=120)
##D mod <- pkmodel(1,TRUE)
##D mod <- pkmodel(2)
##D mod <- pkmodel(2,TRUE)
##D 
## End(Not run)







base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("pk_model", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
cleanEx()
nameEx("plot_mrgsims")
### * plot_mrgsims

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
### Name: plot_mrgsims
### Title: Generate a quick plot of simulated data.
### Aliases: plot_mrgsims plot,mrgsims,missing-method
###   plot,mrgsims,formula-method

### ** Examples


mod <- mrgsolve:::house(end=48, delta=0.2) %>% init(GUT=1000)

out <- mrgsim(mod)

plot(out)

plot(out, subset=time <=24)

plot(out, GUT+CP~.)

plot(out, CP+RESP~time, col="black", scales="same", lty=2)




base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("plot_mrgsims", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
cleanEx()
nameEx("qsim")
### * qsim

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
### Name: qsim
### Title: A quick simulation function.
### Aliases: qsim

### ** Examples


mod <- mrgsolve:::house()

des <- tgrid(0,2400,1)

data <- recmatrix(ev(amt=1000, ii=24, addl=100),des)

out <- mod %>% qsim(data)




base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("qsim", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
cleanEx()
nameEx("rename_cols")
### * rename_cols

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
### Name: rename_cols
### Title: rename columns from vector for new names
### Aliases: rename_cols

### ** Examples

rename_cols(Theoph, c("dv" = "conc", "ID" = "Subject"))



base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("rename_cols", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
cleanEx()
nameEx("render")
### * render

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
### Name: render
### Title: Render a model to a document.
### Aliases: render render,character-method render,mrgmod-method dorender

### ** Examples

## Not run: 
##D mod <- mrgsolve:::house()
##D mrgsolve:::render(mod)
##D mrgsolve:::render("irm2", modlib())
## End(Not run)




base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("render", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
cleanEx()
nameEx("reserved")
### * reserved

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
### Name: reserved
### Title: Reserved words.
### Aliases: reserved

### ** Examples

mrgsolve:::reserved()




base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("reserved", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
cleanEx()
nameEx("sigma")
### * sigma

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
### Name: sigma
### Title: Manipulate SIGMA matrices.
### Aliases: sigma smat SIGMA smat,missing-method smat,matrix-method
###   smat,list-method smat,sigmalist-method smat,mrgmod-method
###   smat,NULL-method smat,mrgsims-method

### ** Examples

## example("sigma")
mat1 <- matrix(1)
mat2 <- diag(c(1,2))
mat3 <- matrix(c(0.1, 0.002, 0.002, 0.5), 2,2)
mat4 <- dmat(0.1, 0.2, 0.3, 0.4)

smat(mat1)
smat(mat1, mat2, mat3)
smat(A=mat1, B=mat2, C=mat3)

mod <- mrgsolve:::house() %>% smat(mat1)

smat(mod)
smat(mod, make=TRUE)



base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("sigma", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
cleanEx()
nameEx("simargs")
### * simargs

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
### Name: simargs
### Title: Access or clear arguments for calls to mrgsim.
### Aliases: simargs simargs.mrgmod

### ** Examples

mod <- mrgsolve:::house()
mod %>% Req(CP,RESP) %>% carry_out(evid,WT,FLAG) %>% simargs




base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("simargs", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
cleanEx()
nameEx("soloc")
### * soloc

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
### Name: soloc
### Title: Return the location of the model shared object.
### Aliases: soloc

### ** Examples

mod <- mrgsolve:::house()
soloc(mod)




base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("soloc", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
cleanEx()
nameEx("stime")
### * stime

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
### Name: stime
### Title: Get the times at which the model will be evaluated.
### Aliases: stime tgrid-class tgrids-class

### ** Examples


## example("stime", package="mrgsolve")

mod <- mrgsolve:::house(end=12, delta=2, add=c(11,13,15))

stime(mod)





base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("stime", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
cleanEx()
nameEx("tgrid")
### * tgrid

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
### Name: stime,mrgmod-method
### Title: Create a simtime object.
### Aliases: stime,mrgmod-method tgrid stime,tgrid-method
###   stime,tgrids-method stime,numeric-method show,tgrid-method
###   show,tgrids-method

### ** Examples


peak <- tgrid(0,6,0.2)
sparse <- tgrid(0,24,4)

day1 <- c(peak,sparse)

design <- c(day1, day1+72, day1+240)

## Not run: 
##D mod <- mrgsolve:::house()
##D 
##D out <- mod %>% ev(amt=1000, ii=24, addl=10) %>% mrgsim(tgrid=design)
##D 
##D plot(out,CP~., type='b')
## End(Not run)



base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("tgrid", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
cleanEx()
nameEx("tscale")
### * tscale

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
### Name: tscale
### Title: Rescale time in the simulated output.
### Aliases: tscale

### ** Examples

# The model is in hours:
mod <- mrgsolve:::house()

# The output is in days:
mod %>% tscale(1/24) %>% mrgsim




base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("tscale", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
cleanEx()
nameEx("update")
### * update

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
### Name: update
### Title: Get all names from a model object.
### Aliases: update names,mrgmod-method update update,mrgmod-method
###   update,omegalist-method update,sigmalist-method
###   update,parameter_list-method update,ev-method

### ** Examples

mod <- mrgsolve:::house()
names(mod)

## Not run: 
##D  mod <- mrgsolve:::house()
##D 
##D  mod <- update(mod, end=120, delta=4, param=list(CL=19.1))
##D  
## End(Not run)



base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("update", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
### * <FOOTER>
###
options(digits = 7L)
base::cat("Time elapsed: ", proc.time() - base::get("ptime", pos = 'CheckExEnv'),"\n")
grDevices::dev.off()
###
### Local variables: ***
### mode: outline-minor ***
### outline-regexp: "\\(> \\)?### [*]+" ***
### End: ***
quit('no')
